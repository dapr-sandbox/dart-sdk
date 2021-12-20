import 'package:dapr_client/dapr_client.dart';
import 'package:dapr_client/src/implementations/grpc/grpc_client.dart';
import 'package:dapr_client/src/implementations/http/http_client.dart';
import 'package:test/test.dart';

void main() {
  test("Default values for DaprClient", () {
    final _defDaprClient = DaprClient();
    expect(_defDaprClient.daprHost, DaprConf.defDaprHost);
    expect(_defDaprClient.daprPort, DaprConf.defDaprHttpPort);
    expect(_defDaprClient.communicationProtocol, CommunicationProtocol.http);
  });

  test("Default values with grpc protocol", () {
    final _defDaprClient = DaprClient(
      communicationProtocol: CommunicationProtocol.grpc,
    );
    expect(_defDaprClient.daprHost, DaprConf.defDaprHost);
    expect(_defDaprClient.daprPort, DaprConf.defDaprGrpcPort);
    expect(_defDaprClient.communicationProtocol, CommunicationProtocol.grpc);
  });

  test("Set daprhost, daprPort arguments", () {
    final _defDaprClientHttp = DaprClient(
      daprHost: 'www.example.com',
      daprPort: 8080,
      communicationProtocol: CommunicationProtocol.http,
    );
    expect(_defDaprClientHttp.daprHost, 'www.example.com');
    expect(_defDaprClientHttp.daprPort, 8080);
    expect(
        _defDaprClientHttp.communicationProtocol, CommunicationProtocol.http);
    final _defDaprClientGrpc = DaprClient(
      daprHost: 'www.example.com',
      daprPort: 8080,
      communicationProtocol: CommunicationProtocol.grpc,
    );
    expect(_defDaprClientGrpc.daprHost, 'www.example.com');
    expect(_defDaprClientGrpc.daprPort, 8080);
    expect(
        _defDaprClientGrpc.communicationProtocol, CommunicationProtocol.grpc);
  });

  test('Ensure protocol based client is created', () {
    final _daprClientHttp = DaprClient(
      communicationProtocol: CommunicationProtocol.http,
    );
    expect(_daprClientHttp.client, isA<DaprHttpClient>());

    final _daprClientGrpc = DaprClient(
      communicationProtocol: CommunicationProtocol.grpc,
    );
    expect(_daprClientGrpc.client, isA<DaprGrpcClient>());
  });
}
