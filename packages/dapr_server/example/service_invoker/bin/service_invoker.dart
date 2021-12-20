import 'dart:io';

import 'package:dapr_client/dapr_client.dart';
import 'package:dapr_server/dapr_server.dart';

void main(List<String> arguments) async {
  // Create dapr Server instance
  final daprServer = DaprServer(
    daprPort: 3500,
    serverPort: 2500,
    communicationProtocol: CommunicationProtocol.http,
  );

  // Create a dapr client instance to invoke the service
  final daprClient = DaprClient(
    daprPort: 3500,
    communicationProtocol: CommunicationProtocol.http,
  );

  // Register a service to be invoked using the daprServer instance
  await daprServer.invoker.listen(
    methodName: 'hello-world',
    callback: (inkCbCont) async {
      print('Sending Hellow world from the sevice cb');
      return 'Hello daprerised world';
    },
    callbackOptions: InvokerCallbackOptions(method: HttpMethod.get),
  );

  // Start the dapr server to register the service to be invoked.
  await daprServer.startServer();
  await Future.delayed(Duration(milliseconds: 250));

  // Use a daprClient to invoke the service
  final invokerResult = await daprClient.invoker.invoke(
    appId: 'myapp',
    methodName: 'hello-world',
    httpMethod: HttpMethod.get,
    data: "Hello from invoker",
  );
  print("==================");
  print("Invoker result $invokerResult");
  print("==================");
  await daprServer.stop();
  exit(0);
}
// http protocol run
// dapr run --app-id myapp --app-port 2500 --dapr-http-port 3500 --dapr-grpc-port 50000 dart run
