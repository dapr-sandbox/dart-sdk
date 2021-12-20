import 'dart:convert';

import 'package:dapr_client/src/implementations/http/http_client.dart';
import 'package:dapr_common/dapr_common.dart';

import '../../abstractions/client_binding.dart';

class HttpClientBinding implements ClientBinding<DaprHttpClient> {
  @override
  final DaprHttpClient client;
  HttpClientBinding({required this.client});
  @override
  Future<Object> send({
    required String bindingName,
    required OutputBindingEvent outputBindingEvent,
  }) async {
    final result = await client.executeDaprApiCall(
      apiUrl: '/bindings/$bindingName',
      httpMethod: HttpMethod.post,
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(outputBindingEvent),
    );
    final _body = result.body;
    print('Result from Binding response $result');
    return _body.isEmpty ? _body : jsonEncode(_body);
  }
}
