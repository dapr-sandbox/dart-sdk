import 'dart:convert';

import 'package:dapr_common/dapr_common.dart';

import '../../abstractions/client_secrets.dart';
import 'http_client.dart';

class HttpClientSecret implements ClientSecret<DaprHttpClient> {
  @override
  final DaprHttpClient client;
  HttpClientSecret({required this.client});

  @override
  Future<Map<String, dynamic>> get({
    required String secretStoreName,
    required String key,
    Map<String, String>? metadata,
  }) async {
    final _queryParams = mapToQueryParams(metadata ?? {});
    final result = await client.executeDaprApiCall(
      apiUrl:
          '/secrets/$secretStoreName/$key${_queryParams.isEmpty ? _queryParams : '?$_queryParams'}',
      httpMethod: HttpMethod.get,
    );
    final _body = result.body;
    return jsonDecode(_body);
  }

  @override
  Future<Map<String, SecretResponse>> getBulk({
    required String secretStoreName,
    Map<String, String>? metadata,
  }) async {
    final result = await client.executeDaprApiCall(
        apiUrl: '/secrets/$secretStoreName/bulk',
        httpMethod: HttpMethod.get,
        headers: {
          'Content-Type': 'application/json',
        });
    final _body = result.body;
    final _decodedResponse = jsonDecode(_body) as Map<String, dynamic>;
    final _responseBulkSecrets = <String, SecretResponse>{};
    for (var bulkSecret in _decodedResponse.entries) {
      _responseBulkSecrets.putIfAbsent(
        bulkSecret.key,
        () => SecretResponse(secrets: bulkSecret.value as Map<String, dynamic>),
      );
    }
    return _responseBulkSecrets;
  }
}
