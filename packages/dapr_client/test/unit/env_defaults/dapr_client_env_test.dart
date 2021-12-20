import 'package:dapr_client/dapr_client.dart';
import 'package:test/test.dart';

void main() {
  test("Default values from environment variable - http", () async {
    // Note: This is set when melos runs this test.
    // TODO: Find a programatic way to set environment variable.
    int envDaprHttpPort = 3400;

    final _defDaprClient = DaprClient();
    expect(_defDaprClient.daprHost, DaprConf.defDaprHost);
    expect(_defDaprClient.daprPort, envDaprHttpPort);
    expect(_defDaprClient.communicationProtocol, CommunicationProtocol.http);
  });
  test("Default values from environment variable - grpc", () async {
    // Note: This is set when melos runs this test.
    // TODO: Find a programatic way to set environment variable.
    int envDaprGrpcPort = 54000;

    final _defDaprClient = DaprClient(
      communicationProtocol: CommunicationProtocol.grpc,
    );
    expect(_defDaprClient.daprHost, DaprConf.defDaprHost);
    expect(_defDaprClient.daprPort, envDaprGrpcPort);
    expect(_defDaprClient.communicationProtocol, CommunicationProtocol.grpc);
  });
}
