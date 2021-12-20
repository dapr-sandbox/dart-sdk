import 'dart:convert';

import 'package:dapr_client/src/implementations/dapr_client.dart';
import 'package:dapr_server/dapr_server.dart';
import 'package:mockito/mockito.dart';

import 'package:test/test.dart';

/// The tests in this file are organised based on the dapr api's sdk definition
/// from the following page.
///
/// https://docs.dapr.io/reference/api/
///
/// Any future tests should be placed in the respective group. Keeping them in
/// a single file allows to have a common setup.
///
/// If the number of tests are growing high then segregating them into seprate
/// files shall be considered.
void main() {
  /// Name of app provided while running the app.
  final appId = 'grpc-test-suite';

  /// local dapr host
  final daprHost = "127.0.0.1";

  /// local dapr sidecar port
  final daprPort = 50000;

  /// App server port
  final appPort = 50001;

  /// App server host
  final appHost = "127.0.0.1";

  /// Common dapr client instance to run all the tests.
  final DaprClient daprClient = DaprClient(
    daprHost: daprHost,
    daprPort: daprPort,
    communicationProtocol: CommunicationProtocol.grpc,
  );

  /// DaprServer for testing.
  final DaprServer daprServer = DaprServer(
    daprHost: daprHost,
    daprPort: daprPort,
    serverHost: appHost,
    serverPort: appPort,
    communicationProtocol: CommunicationProtocol.grpc,
  );

  /// Name of the pub sub component deployed while runnng the dapr.
  /// check the `test/componets/pubsub-redis.yaml` file.
  final pubsubName = 'pubsub-redis';

  /// Set of topic names to be used in the following tests
  final topicName1 = 'test-topic-1';

  /// Binding component name
  final String bindingEventName = "binding-rabbit";

  /// A mock Pubsub class to hold the call back function to be passed to the
  /// subscriber method of the dapr server.
  final mockTestPubSub = MockTestPubSub();

  /// A mock [MockTestBinding] class to hold the call back function to be
  /// used as an input binding call back method of the dapr server.
  final mockTestBinding = MockTestBinding();

  /// Define the common setup for all the tests.
  setUpAll(() async {
    // Setup Invoker related server configurations.
    await daprServer.invoker.listen(
      callback: (content) async {
        /// simulate delay of 2 seconds
        Future.delayed(Duration(seconds: 2));
        return 'Get Invoker invoked with ${content.body}';
      },
      methodName: 'test-invoker-get',
      callbackOptions: InvokerCallbackOptions(method: HttpMethod.get),
    );
    await daprServer.invoker.listen(
      callback: (content) async {
        return 'Post Invoker invoked with ${content.body}';
      },
      methodName: 'test-invoker-post',
      callbackOptions: InvokerCallbackOptions(method: HttpMethod.post),
    );
    await daprServer.invoker.listen(
      callback: (content) async {
        return 'Put Invoker invoked with ${content.body}';
      },
      methodName: 'test-invoker-put',
      callbackOptions: InvokerCallbackOptions(method: HttpMethod.put),
    );
    await daprServer.invoker.listen(
      callback: (content) async {
        return 'Delete Invoker invoked with ${content.body}';
      },
      methodName: 'test-invoker-delete',
      callbackOptions: InvokerCallbackOptions(method: HttpMethod.delete),
    );
    await daprServer.invoker.listen(
      callback: (content) async {
        return 'Invoker received params with ${content.query}';
      },
      methodName: 'test-invoker-params',
      callbackOptions: InvokerCallbackOptions(method: HttpMethod.get),
    );

    // Setup pubsub - register subscriptions.
    await daprServer.pubsub.subscribe(
      pubSubName: pubsubName,
      topic: topicName1,
      callback: mockTestPubSub.testCallBack,
      route: 'route1',
    );
    // Setup binding callback - register subscriptions.
    await daprServer.binding.receive(
      bindingName: bindingEventName,
      callback: mockTestBinding.testCallBack,
    );
    await daprServer.startServer();
    await Future.delayed(Duration(milliseconds: 100));
  });
  group('Dapr grpc client - Invoker', () {
    group('Test all http method types for invoker', () {
      test('Invoker for get method', () async {
        final methodName = 'test-invoker-get';
        final resp = await daprClient.invoker.invoke(
          appId: appId,
          data: '',
          methodName: methodName,
          httpMethod: HttpMethod.get,
        );
        expect(resp, 'Get Invoker invoked with ');
      });
      test('Invoker for post method', () async {
        final methodName = 'test-invoker-post';
        final testBody = {'hello': 'world'};
        final resp = await daprClient.invoker.invoke(
          appId: appId,
          data: testBody,
          methodName: methodName,
          httpMethod: HttpMethod.post,
        );
        expect(resp, 'Post Invoker invoked with ${jsonEncode(testBody)}');
      });
      test('Invoker for put method', () async {
        final methodName = 'test-invoker-put';
        final testBody = {'hello': 'world'};
        final resp = await daprClient.invoker.invoke(
          appId: appId,
          data: testBody,
          methodName: methodName,
          httpMethod: HttpMethod.put,
        );
        expect(resp, 'Put Invoker invoked with ${jsonEncode(testBody)}');
      });
      test('Invoker for delete method', () async {
        final methodName = 'test-invoker-delete';
        final testBody = {'hello': 'world'};
        final resp = await daprClient.invoker.invoke(
          appId: appId,
          data: testBody,
          methodName: methodName,
          httpMethod: HttpMethod.delete,
        );
        expect(resp, 'Delete Invoker invoked with ${jsonEncode(testBody)}');
      });
    });

    test('query params is passed correctly', () async {
      final methodName = 'test-invoker-params';
      final testParams = {'param1': 'one', 'param2': '2'};
      final resp = await daprClient.invoker.invoke(
        appId: appId,
        data: '',
        methodName: methodName,
        httpMethod: HttpMethod.get,
      );
      expect(resp, 'Invoker received params with $testParams');
    }, skip: 'Currently api is not setup to pass query parameters.');
  });
  group('Dapr grpc client - publish', () {
    setUp(() async {
      // Reset the mock after every test.
      // print('reset of pubsub mock object is called');
      reset(mockTestPubSub);
    });
    test('Call back is called once', () async {
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        return PubSubResponse.success();
      });
      await daprClient.pubSub
          .publish(pubSubName: pubsubName, topicName: topicName1);

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));
      verify(mockTestPubSub.testCallBack(any)).called(1);
    });
    test('publish data', () async {
      late final Map _subscribedData;
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        print(_.positionalArguments);
        final _decodedMessage = _.positionalArguments[0] as CloudEvent;
        _subscribedData = _decodedMessage.data as Map;
        return PubSubResponse.success();
      });
      final _publishedData = {'hello': 'world2'};
      await daprClient.pubSub.publish(
        pubSubName: pubsubName,
        topicName: topicName1,
        data: _publishedData,
      );

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));
      expect(_subscribedData, isNotNull);
      expect(_subscribedData, _publishedData);
      verify(mockTestPubSub.testCallBack(any)).called(1);
    });
    test('Call back is called more than once', () async {
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        return PubSubResponse.success();
      });

      // Publish messages three times
      await daprClient.pubSub
          .publish(pubSubName: pubsubName, topicName: topicName1);
      await daprClient.pubSub
          .publish(pubSubName: pubsubName, topicName: topicName1);
      await daprClient.pubSub
          .publish(pubSubName: pubsubName, topicName: topicName1);

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));

      /// Verify that the call back was called 3 times.
      verify(mockTestPubSub.testCallBack(any)).called(3);
    });
    test('Call back is called only once when a DROP is returned', () async {
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        return PubSubResponse.drop();
      });

      await daprClient.pubSub
          .publish(pubSubName: pubsubName, topicName: topicName1);

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));
      verify(mockTestPubSub.testCallBack(any)).called(1);
      // Ensure that there is no more retries from the dapr side.
      verifyNoMoreInteractions(mockTestPubSub);
    });
    test('raw event', () async {
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        return PubSubResponse.success();
      });

      await daprClient.pubSub.publish(
        pubSubName: pubsubName,
        topicName: topicName1,
      );

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));
      verify(mockTestPubSub.testCallBack(any)).called(1);
      // Ensure that there is no more retries from the dapr side.
      verifyNoMoreInteractions(mockTestPubSub);
    }, skip: 'api doesnt accept rawevent payload flag.');

    /// Currently being skipped.
    /// issue tracked in #4
    group('Test retry pubsub delivery', () {
      test('Call back is called more than once when a RETRY is returned',
          () async {
        when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
          return PubSubResponse.retry();
        });
        await daprClient.pubSub
            .publish(pubSubName: pubsubName, topicName: topicName1);

        /// Wait for the even to be processed.
        await Future.delayed(Duration(seconds: 15));
        // verify(mockTestPubSub.testCallBack(any)).called(1);
        // Ensure that there is no more retries from the dapr side.
        verify(mockTestPubSub.testCallBack(any)).called(greaterThan(1));
      });
      test('Message is redelivered when a internal server error is returned',
          () async {
        when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
          return PubSubResponse.error();
        });

        await daprClient.pubSub
            .publish(pubSubName: pubsubName, topicName: topicName1);

        /// Wait for the even to be processed.
        await Future.delayed(Duration(seconds: 15));
        // verify(mockTestPubSub.testCallBack(any)).called(1);
        // Ensure that there is no more retries from the dapr side.
        verify(mockTestPubSub.testCallBack(any)).called(greaterThan(1));
      });
      test(
          'Message is redelivered when a internal server error is returned due to an exception in the callback',
          () async {
        when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
          throw Exception();
        });

        await daprClient.pubSub
            .publish(pubSubName: pubsubName, topicName: topicName1);

        /// Wait for the even to be processed.
        await Future.delayed(Duration(seconds: 15));
        // verify(mockTestPubSub.testCallBack(any)).called(1);
        // Ensure that there is no more retries from the dapr side.
        verify(mockTestPubSub.testCallBack(any)).called(greaterThan(1));
      });
    }, skip: 'Currently skipping and will tracked in issue #4  ');
  });
  group('Dapr Grpc client - Bindings', () {
    setUp(() async {
      // Reset the mock after every test.
      // print('reset of Binding mock object is called');
      reset(mockTestBinding);
    });
    test('Binding event callback called once', () async {
      when(mockTestBinding.testCallBack(any)).thenAnswer((_) async {
        // print('named arguments of binding call back ${_.namedArguments}');
        return _.namedArguments;
      });
      await daprClient.binding.send(
        bindingName: bindingEventName,
        outputBindingEvent: OutputBindingEvent(
          data: jsonEncode({'message': "hello world"}),
          operation: 'create',
        ),
      );

      // without this wait the test would fail as the binding event might not
      // have propagated to the http server callback.
      await Future.delayed(Duration(milliseconds: 10));
      verify(mockTestBinding.testCallBack(any)).called(1);
    });
    test('Binding event callback with data in response', () async {
      when(mockTestBinding.testCallBack(any)).thenAnswer((_) async {
        // print('named arguments of binding call back ${_.namedArguments}');
        return _.namedArguments;
      });
      await daprClient.binding.send(
        bindingName: bindingEventName,
        outputBindingEvent: OutputBindingEvent(
          data: jsonEncode({'message': "hello world"}),
          operation: 'create',
        ),
      );

      // without this wait the test would fail as the binding event might not
      // have propagated to the http server callback.
      await Future.delayed(Duration(milliseconds: 10));
      verify(mockTestBinding.testCallBack(any)).called(1);
    });
  });
  group('Dapr Http Client - Secret', () {
    // Note the secrets for this test are provided as env variables while
    // running the tests.
    //
    // Check melos.yaml in the root directory and the script named
    // test:client:e2e:http
    var secretStoreName = 'secret-envvars';
    test('Get secret for a single key', () async {
      final result = await daprClient.secret.get(
        secretStoreName: secretStoreName,
        key: 'TEST_SECRET_1',
      );
      expect(result, {'TEST_SECRET_1': 'secret_val_1'});
    });
    test('Get bulk secrets', () async {
      final result = await daprClient.secret.getBulk(
        secretStoreName: secretStoreName,
      );
      // verrify if the first secret is present
      expect(
        result,
        containsPair(
          'TEST_SECRET_1',
          SecretResponse(secrets: {'TEST_SECRET_1': 'secret_val_1'}),
        ),
      );
      // verrify if the second secret is present
      expect(
        result,
        containsPair(
          'TEST_SECRET_2',
          SecretResponse(secrets: {'TEST_SECRET_2': 'secret_val_2'}),
        ),
      );
    });
  });

  /// To avoid dependencies between tests each test should create its own
  /// Key/Value pairs and perform the tests.
  group("Dapr Grpc Client - State", () {
    var storeName = 'state-redis';
    test("Save State", () async {
      // Prepare the state to be stored
      final stateObjects = [
        SaveStateItem(key: 'key-1', value: 'value-1'),
        SaveStateItem(key: 'key-2', value: 'value-2'),
        SaveStateItem(key: 'key-3', value: 'value-3'),
      ];

      // Invoke state save logic
      await daprClient.state
          .save(storeName: storeName, stateObjects: stateObjects);

      // Verify if the state is store appropriately
      final fetchedState =
          await daprClient.state.get(storeName: storeName, key: 'key-1');

      expect(
        fetchedState,
        'value-1',
      );
    });

    test("Get state in bulk", () async {
      // Prepare the state to be stored
      final stateObjects = [
        SaveStateItem(key: 'key-1', value: 'value-1'),
        SaveStateItem(key: 'key-2', value: 'value-2'),
      ];
      // Invoke state save logic
      await daprClient.state
          .save(storeName: storeName, stateObjects: stateObjects);
      // Prepare result to compare
      final bulkStateObjects = [
        BulkStateItem(key: 'key-1', data: 'value-1', etag: '1'),
        BulkStateItem(key: 'key-2', data: 'value-2', etag: '1'),
      ];
      final result = await daprClient.state
          .getBulk(storeName: storeName, keys: ['key-1', 'key-2']);
      expect(result, unorderedEquals(bulkStateObjects));
    });

    test('Delete state', () async {
      // Prepare the state to be stored
      final stateObjects = [
        SaveStateItem(key: 'key-1', value: 'value-1'),
        SaveStateItem(key: 'key-2', value: 'value-2'),
      ];
      // Invoke state save logic
      await daprClient.state
          .save(storeName: storeName, stateObjects: stateObjects);

      // Delete the state item
      await daprClient.state.delete(storeName: storeName, key: 'key-3');

      // fetch the deleted key and verify that its not present
      final result =
          await daprClient.state.get(storeName: storeName, key: 'key-3');

      expect(result, isEmpty);
    });

    test('Save Numeric, boolean and Map values', () async {
      final stateObjects = [
        SaveStateItem(key: 'key-1', value: 'value-1'),
        SaveStateItem(key: 'key-2', value: 2),
        SaveStateItem(key: 'key-3', value: true),
        SaveStateItem(key: 'key-4', value: {
          'person': {
            'firstName': 'john',
            'lastName': 'doe',
          }
        }),
      ];

      // Invoke state save logic
      await daprClient.state
          .save(storeName: storeName, stateObjects: stateObjects);

      // Verify if all the states are stored appropriately
      final fetchedState = await Future.wait([
        daprClient.state.get(storeName: storeName, key: 'key-1'),
        daprClient.state.get(storeName: storeName, key: 'key-2'),
        daprClient.state.get(storeName: storeName, key: 'key-3'),
        daprClient.state.get(storeName: storeName, key: 'key-4'),
      ]);

      final expectedStates = [
        'value-1',
        2,
        true,
        {
          'person': {
            'firstName': 'john',
            'lastName': 'doe',
          }
        },
      ];
      expect(
        fetchedState,
        expectedStates,
      );
    });

    test('Bulk state retrieval - Numeric, String, boolean, Map values',
        () async {
      // Define the state values.
      final value1 = 'value-1';
      final value2 = 2;
      final value3 = true;
      final value4 = {
        'person': {
          'firstName': 'john',
          'lastName': 'doe',
          'age': 23,
          'real': false,
          'weight': 55.5,
          'hobbies': ['TT', 'AB', 'BC', 2]
        }
      };
      final stateObjects = [
        SaveStateItem(key: 'key-1', value: value1),
        SaveStateItem(key: 'key-2', value: value2),
        SaveStateItem(key: 'key-3', value: value3),
        SaveStateItem(key: 'key-4', value: value4),
      ];

      // Invoke state save logic
      await daprClient.state
          .save(storeName: storeName, stateObjects: stateObjects);

      // Verify if all the states are stored appropriately
      final fetchedStates = await daprClient.state.getBulk(
          storeName: storeName, keys: ['key-1', 'key-2', 'key-3', 'key-4']);

      final expectedStates = [
        BulkStateItem(key: 'key-1', data: value1, etag: '1'),
        BulkStateItem(key: 'key-2', data: value2, etag: '1'),
        BulkStateItem(key: 'key-3', data: value3, etag: '1'),
        BulkStateItem(key: 'key-4', data: value4, etag: '1'),
      ];
      expect(
        fetchedStates,
        unorderedEquals(expectedStates),
      );
    });

    test('Delete a nested key/value sate', () async {
      final value4 = {
        'person': {
          'firstName': 'john',
          'lastName': 'doe',
          'age': 23,
          'real': false,
          'weight': 55.5,
          'hobbies': ['TT', 'AB', 'BC', 2]
        }
      };
      final stateObjects = [
        SaveStateItem(key: 'key-4', value: value4),
      ];
      // Invoke state save logic
      await daprClient.state
          .save(storeName: storeName, stateObjects: stateObjects);
      // Delete key state
      await daprClient.state.delete(storeName: storeName, key: 'key-4');

      // Fetch the state and verify its empty
      final result =
          await daprClient.state.get(storeName: storeName, key: 'key-4');
      expect(result, isEmpty);
    });

    test('State Transaction - Update key/value and delete another key',
        () async {
      // Insert two key value pairs to the state store.
      final stateObjects = [
        SaveStateItem(key: 'key-1', value: 'value-1'),
        SaveStateItem(key: 'key-2', value: 'value-2'),
        SaveStateItem(key: 'key-3', value: 'value-3'),
      ];

      // Invoke state save logic
      await daprClient.state
          .save(storeName: storeName, stateObjects: stateObjects);
      await daprClient.state.transaction(storeName: storeName, operations: [
        StateOperation(
          operation: 'upsert',
          request:
              StateOperationRequest(key: 'key-1', value: 'updated-value-1'),
        ),
        StateOperation(
          operation: 'upsert',
          request:
              StateOperationRequest(key: 'key-2', value: 'updated-value-2'),
        ),
        StateOperation(
          operation: 'delete',
          request: StateOperationRequest(key: 'key-3'),
        ),
      ]);

      // Fetch the state and verify its empty
      final val1 =
          await daprClient.state.get(storeName: storeName, key: 'key-1');
      final val2 =
          await daprClient.state.get(storeName: storeName, key: 'key-2');
      final val3 =
          await daprClient.state.get(storeName: storeName, key: 'key-3');
      expect(val1, 'updated-value-1');
      expect(val2, 'updated-value-2');
      expect(val3, '');
    });
    // Removes all the keys/values stored in the state store.
    // Any future tests involving different keys should be removed here.
    tearDown(() async {
      await daprClient.state.delete(storeName: storeName, key: 'key-1');
      await daprClient.state.delete(storeName: storeName, key: 'key-2');
      await daprClient.state.delete(storeName: storeName, key: 'key-3');
      await daprClient.state.delete(storeName: storeName, key: 'key-4');
    });
  });
}
