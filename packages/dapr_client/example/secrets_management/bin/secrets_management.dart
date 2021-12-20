import 'package:dapr_client/dapr_client.dart';

void main(List<String> arguments) async {
  // Defaults to http protocol
  final daprClient = DaprClient(daprPort: 3500);

  // Switch to grpc by changing the commmunication protocol.
  // final daprClient = DaprClient(
  //     daprPort: 50000, communicationProtocol: CommunicationProtocol.grpc);

  // Fetch the secret from local store.
  final mySecret = await daprClient.secret
      .get(secretStoreName: 'secret-local', key: 'my-secret');

  print("================");
  print('My secret is $mySecret');
  print("================");

  // Fetch the bulk secret from local store.
  final myBulkSecret =
      await daprClient.secret.getBulk(secretStoreName: 'secret-local');

  print("================");
  print('My secret is $myBulkSecret');
  print("================");
}

// dapr run --app-id myapp --dapr-http-port 3500 --dapr-grpc-port 50000 --components-path ./components dart run