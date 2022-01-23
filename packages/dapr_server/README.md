# Dapr_server

Dapr dart sdk provides a **dapr_server** package to bootstrap a daperised dart micro services defined using function callbacks.
These services can be deployed either using gRPC or HTTP protocol.

## Prerequisite
- [Dapr CLI](https://docs.dapr.io/getting-started/install-dapr-cli/) installed
- Initialized [Dapr environment](https://docs.dapr.io/getting-started/install-dapr-selfhost/))
- [Dart installed](https://dart.dev/get-dart) or [Flutter installed](https://docs.flutter.dev/get-started/install)

## Install dapr_client dependency
Install the `dapr_server` package as a dependency in your `pubspec.yaml` directly or using `pub add` command.

### In pubspec.yaml


```yaml
dependencies:
  dapr_server: any
```

### Dart

```bash
dart pub add dapr_server
```
### Flutter

```bash
flutter pub add dapr_server
```

## Import the server package 
```dart
import 'pacakge:dapr_server/dapr_server.dart'
```

## Creating and Starting a DaprServer

A `DaprSever` instance is required inorder to start a dapr server either using gRpc or http protocol. 
`DaprServer` object accepts three optional paramenters namely, 

1. `communicationProtocol` - The protocol to be used to communicate with sidecar.
    * Accepts either `CommunicationProtocol.http`(_default_) or `CommunicationProtocol.grpc`.

2. `daprHost` - The hostname or the ip address of the dapr sidecar process.
    * Defaults to **127.0.0.1**.

3. `daprPort` - The port to access the dapr sidecar process.        
    * If not provided, uses environment variables `DAPR_HTTP_PORT`, `DAPR_GRPC_PORT` respectively for http and grpc protocols.
    * If no environment variables set, defaults to **3500** for http and **50001** for grpc protocol

4. `serverHost` - The hostname or the ip address of the dapr server process.
    * Defaults to **127.0.0.1**.

3. `serverPort` - The port on which to run the dapr server.        
    * If not provided, uses environment variables `APP_PORT`.
    * If no environment variable is set, defaults to **3000**.

### Http DaprServer

```dart
/// Default server
final daprServer = DaprServer();

/// Start the server
daprServer.startServer();

/// Explicitly specifying the parameters
final customServer = DaprServer(
  daprHost: "my.domain.com",
  daprPort: 3600,
  serverPort: 8080,
  serverHost: "my.server.org",
  communicationProtocol: CommunicationProtocol.http,
);
```
### Grpc DaprServer

```dart
/// Default server
final daprServer = DaprServer(
    communicatonProtocol: CommunicationProtocol.grpc,
);
```

<!-- #### Adding additional http endpoints
When using `http` as communication protocol, it is possible to add additional http
endpoints along with handler for the same which will be deployed along with the http server.

This set of endpoint & handlers can be passed through `additionalRouteHandlers` while creating `DaprServer` instance.
The `additionalRouteHandlers` parameter will be ignored when using `grpc` protocol.

```dart
import 'package:shelf/shelf.dart`
/// 
final daprServerWithAdditionalHandlers = DaprServer(
  additionalRouteHandlers: [

  ]
)
``` -->

## Stop the server
DaprServer can be stopped by invoking the `stop` method.

```dart
daprServer.stop()
```

## Subscribe to topics
Dapr allows subscribing to messages/events from a specifici topic.
In order to subscribe to a topic dart sdk provides a `subscribe` which accepts a callback function that will be called with the event data enveloped in cloud event template.

```dart
await daprServer.pubsub.subscribe(
  pubSubName: 'pubsub-redis',
  topic: 'test-topic-1',
  callback: (dynamic data){
    print('received data : $data');
  },
  route: 'route1',
);
```

## Service Invocation Handler
Http services can be exposed as daperised service using the `dapr_server` package, which can then be invoked by any client using through the dapr sidecar seemlessly.

The `dapr_server` provides a callback function based api to write http services.
Following examples show how to define http services using differnt http methods.

### Get

```dart
await daprServer.invoker.listen(
  callback: (content) async {
    /// simulate delay of 2 seconds
    Future.delayed(Duration(seconds: 2));
    return 'Get Invoker invoked with ${content.body}';
  },
  methodName: 'test-invoker-get',
  callbackOptions: InvokerCallbackOptions(method: HttpMethod.get),
);
```
### Post

```dart
await daprServer.invoker.listen(
  callback: (content) async {
    return 'Post Invoker invoked with ${content.body}';
  },
  methodName: 'test-invoker-post',
  callbackOptions: InvokerCallbackOptions(method: HttpMethod.post),
);
```
### Put

```dart
await daprServer.invoker.listen(
  callback: (content) async {
    return 'Put Invoker invoked with ${content.body}';
  },
  methodName: 'test-invoker-put',
  callbackOptions: InvokerCallbackOptions(method: HttpMethod.put),
);
```
### Delete
```dart
await daprServer.invoker.listen(
  callback: (content) async {
    return 'Delete Invoker invoked with ${content.body}';
  },
  methodName: 'test-invoker-delete',
  callbackOptions: InvokerCallbackOptions(method: HttpMethod.delete),
);
```

## Binding Invocation Handler
Input bindings can be registered using the dart-sdk, which will be invoked by the dapr-sidecar whenever an output binding event is send to the binding.

```dart
await daprServer.binding.receive(
  bindingName: bindingEventName,
  callback: mockTestBinding.testCallBack,
);
```

## Related links
