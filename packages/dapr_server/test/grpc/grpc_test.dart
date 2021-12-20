import 'dart:convert';

import 'package:dapr_server/dapr_server.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

void main() {
  /// Name of app provided while running the app.
  final appId = 'grpc-test-suite';

  /// Port where the server application is running.
  final serverPort = 3000;

  /// http port of the dapr sidecar.
  final daprPort = 3500;

  /// Setup Daprserver to work using grpc protocol
  final daprServer = DaprServer(
    serverPort: serverPort,
    daprPort: daprPort,
    communicationProtocol: CommunicationProtocol.grpc,
  );

  /// Name of the pub sub component deployed while runnng the dapr.
  /// check the `test/componets/pubsub-redis.yaml` file.
  final pubsubName = 'pubsub-redis';

  final bindingEventName = 'binding-rabbit';

  /// Our test suite should interact with the dapr sidecar not the server app
  /// itself.
  final baseUrl = 'http://localhost:$daprPort/v1.0';

  /// BaseUrl for invoke api
  final invokerBaseUrl = '$baseUrl/invoke/$appId/method';

  /// BaseUrl for pubslish api
  /// https://docs.dapr.io/reference/api/pubsub_api/#http-request
  final publishBaseUrl = '$baseUrl/publish/$pubsubName';

  /// BaseUrl for binding api
  /// https://docs.dapr.io/reference/api/bindings_api/#http-request-2
  final bindingBaseUrl = '$baseUrl/bindings/$bindingEventName';

  /// A mock Pubsub class to hold the call back function to be passed to the
  /// subscriber method of the dapr server.
  final mockTestPubSub = MockTestPubSub();

  /// A mock [MockTestBinding] class to hold the call back function to be
  /// used as an input binding call back method of the dapr server.
  final mockTestBinding = MockTestBinding();

  /// Set of topic names to be used in the following tests
  final topicName1 = 'test-topic-1';

  var httpClient = http.Client();

  /// The dapr side car will be started by melos while running the tests.
  /// In order to debug the test
  /// Start the dapr sidecar manually using the following command and then run
  /// the tests.
  ///
  /// dapr run --app-id http-test-suite --app-protocol grpc --app-port 3000 --dapr-http-port 3500 --components-path ./test/components
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
    // Setup raw even subscription
    await daprServer.pubsub.subscribe(
      pubSubName: pubsubName,
      topic: topicName1,
      callback: mockTestPubSub.testCallBack,
      route: 'route1-raw',
      rawEvents: true,
    );

    // Setup binding callback - register subscriptions.
    await daprServer.binding.receive(
      bindingName: bindingEventName,
      callback: mockTestBinding.testCallBack,
      // callback: (e) async =>mockTestBinding.testCallBack(e),
    );
    await daprServer.startServer();
    await Future.delayed(Duration(milliseconds: 500));
  });
  group('Invoker api tests', () {
    group('Test all http method types for invoker', () {
      test('Invoker for get method', () async {
        final methodName = 'test-invoker-get';
        final uri = Uri.parse('$invokerBaseUrl/$methodName');
        final resp = await httpClient.get(uri);
        expect(resp.body, 'Get Invoker invoked with ');
      });
      test('Invoker for post method', () async {
        final methodName = 'test-invoker-post';
        final testBody = {'hello': 'world'};
        final uri = Uri.parse('$invokerBaseUrl/$methodName');
        final resp = await httpClient.post(uri, body: jsonEncode(testBody));
        expect(resp.body, 'Post Invoker invoked with ${jsonEncode(testBody)}');
      });
      test('Invoker for put method', () async {
        final methodName = 'test-invoker-put';
        final testBody = {'hello': 'world'};
        final uri = Uri.parse('$invokerBaseUrl/$methodName');
        final resp = await httpClient.put(uri, body: jsonEncode(testBody));
        expect(resp.body, 'Put Invoker invoked with ${jsonEncode(testBody)}');
      });
      test('Invoker for delete method', () async {
        final methodName = 'test-invoker-delete';
        final testBody = {'hello': 'world'};
        final uri = Uri.parse('$invokerBaseUrl/$methodName');
        final resp = await httpClient.delete(uri, body: jsonEncode(testBody));
        expect(
            resp.body, 'Delete Invoker invoked with ${jsonEncode(testBody)}');
      });
    });

    test('query params is passed correctly', () async {
      final methodName = 'test-invoker-params';
      final testParams = {'param1': 'one', 'param2': '2'};
      final uri = Uri.parse(
          '$invokerBaseUrl/$methodName?${mapToQueryParams(testParams)}');

      final resp = await httpClient.get(uri);
      expect(resp.body, 'Invoker received params with $testParams');
    });
  });

  group('Test PubSub subscribe mechanism', () {
    setUp(() {
      // Reset the mock after every test.
      // print('reset of pubsub mock object is called');
      reset(mockTestPubSub);
    });
    test('Call back is called once', () async {
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        return PubSubResponse.success();
      });

      final uri = Uri.parse('$publishBaseUrl/$topicName1');
      await httpClient.post(uri,
          headers: {"Content-Type": "text/plain"}, body: 'Hello World 1');

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));
      verify(mockTestPubSub.testCallBack(any)).called(1);
    });
    test('Call back is called more than once', () async {
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        return PubSubResponse.success();
      });

      final uri = Uri.parse('$publishBaseUrl/$topicName1');
      // Publish messages three times
      await httpClient.post(uri,
          headers: {"Content-Type": "text/plain"}, body: 'Hello World');
      await httpClient.post(uri,
          headers: {"Content-Type": "text/plain"}, body: 'Hello World');
      await httpClient.post(uri,
          headers: {"Content-Type": "text/plain"}, body: 'Hello World');

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));

      /// Verify that the call back was called 3 times.
      verify(mockTestPubSub.testCallBack(any)).called(3);
    });
    test('Call back is called only once when a DROP is returned', () async {
      when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
        return PubSubResponse.drop();
      });

      final uri = Uri.parse('$publishBaseUrl/$topicName1');
      await httpClient.post(uri,
          headers: {"Content-Type": "text/plain"}, body: 'Hello World');

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

      final uri =
          Uri.parse('$publishBaseUrl/$topicName1?metadata.rawPayload=true');
      await httpClient.post(
        uri,
        body: jsonEncode({'Hello': 'world'}),
        headers: {
          'Content-type': 'application/json',
        },
      );

      /// Wait for the even to be processed.
      await Future.delayed(Duration(seconds: 1));
      verify(mockTestPubSub.testCallBack(any)).called(1);
      // Ensure that there is no more retries from the dapr side.
      verifyNoMoreInteractions(mockTestPubSub);
    });

    /// Currently being skipped.
    /// issue tracked in #4
    group(
      'Test retry pubsub delivery',
      () {
        test('Call back is called more than once when a RETRY is returned',
            () async {
          when(mockTestPubSub.testCallBack(any)).thenAnswer((_) async {
            return PubSubResponse.retry();
          });

          final uri = Uri.parse('$publishBaseUrl/$topicName1');
          await httpClient.post(uri, body: 'Hello World');

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

          final uri = Uri.parse('$publishBaseUrl/$topicName1');
          await httpClient.post(uri, body: 'Hello World');

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

          final uri = Uri.parse('$publishBaseUrl/$topicName1');
          await httpClient.post(uri, body: 'Hello World');

          /// Wait for the even to be processed.
          await Future.delayed(Duration(seconds: 15));
          // verify(mockTestPubSub.testCallBack(any)).called(1);
          // Ensure that there is no more retries from the dapr side.
          verify(mockTestPubSub.testCallBack(any)).called(greaterThan(1));
        });
      },
      // skip: false,
      skip: 'Currently skipping and will tracked in issue #4 ',
    );
  });

  group('Test Binding Invoking', () {
    setUp(() async {
      // Reset the mock after every test.
      // print('reset of Binding mock object is called');
      reset(mockTestBinding);
    });
    test('Input Binding call back is called once', () async {
      when(mockTestBinding.testCallBack(any)).thenAnswer((_) async {
        // print('====Printing-positional args');
        // print(_.positionalArguments);
        return _.namedArguments;
      });
      final uri = Uri.parse(bindingBaseUrl);
      await httpClient.post(
        uri,
        body: jsonEncode({
          'data': {'message': "hello world"},
          'metadata': {"key": "something"},
          'operation': 'create'
        }),
        headers: {'Content-Type': 'application/json'},
      );
      await Future.delayed(Duration(seconds: 2));
      verify(mockTestBinding.testCallBack(any)).called(1);
    });
  });
  tearDownAll(() async {
    await daprServer.stop();
  });
}
