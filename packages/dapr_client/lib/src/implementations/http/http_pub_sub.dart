import 'dart:convert';


import 'package:dapr_client/src/abstractions/client_pubsub.dart';
import 'package:dapr_common/dapr_common.dart';
import 'http_client.dart';

class HttpClientPubSub implements ClientPubSub<DaprHttpClient> {
  @override
  DaprHttpClient client;
  HttpClientPubSub({required this.client});

  @override
  Future<void> publish({
    required String pubSubName,
    required String topicName,
    Object? data,
    String contentType = 'application/json',
    PublishMetadata metadata = const PublishMetadata(),
  }) async {
    final dynamic _body;
    if (data is String || data is List<int>) {
      _body = data;
    } else {
      _body = jsonEncode(data);
    }
    await client.executeDaprApiCall(
      apiUrl: '/publish/$pubSubName/$topicName${_metaToParams(metadata)}',
      httpMethod: HttpMethod.post,
      headers: {
        'Content-Type': contentType,
      },
      body: _body,
    );
  }

  /// Converts the [PublishMetadata] instance to a query param string.
  String _metaToParams(PublishMetadata metadata) {
    var _mqp = '?metadata.rawPayload=${metadata.rawPayload}';

    if (metadata.ttlInSeconds != null) {
      _mqp += metadata.ttlInSeconds == null
          ? ''
          : '&metadata.ttlInSeconds=${metadata.ttlInSeconds}';
    }
    return _mqp;
  }
}
