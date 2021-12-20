import 'package:dapr_client/src/abstractions/client_invoker.dart';
import 'package:dapr_client/src/implementations/http/http_client.dart';
import 'package:dapr_common/dapr_common.dart';

class HttpClientInvoker implements ClientInvoker<DaprHttpClient> {
  @override
  DaprHttpClient client;

  HttpClientInvoker({required this.client});
  @override
  Future<Object> invoke(
      {required String appId,
      required String methodName,
      required HttpMethod httpMethod,
      Object? data}) async {
    final _resp = await client.executeDaprApiCall(
      apiUrl: '/invoke/$appId/method/$methodName',
      httpMethod: httpMethod,
      body: data,
    );
    final _body = _resp.body;
    return _body;
  }
}
