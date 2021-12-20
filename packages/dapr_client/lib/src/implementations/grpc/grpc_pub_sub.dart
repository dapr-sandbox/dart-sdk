import 'dart:convert';

import 'package:dapr_client/src/abstractions/client_pubsub.dart';
import 'package:dapr_client/src/implementations/grpc/grpc_client.dart';
import 'package:dapr_proto/dapr_proto.dart' as dp;
import 'package:dapr_common/dapr_common.dart';

typedef ByteArray = List<int>;

class GrpcClientPubSub implements ClientPubSub<DaprGrpcClient> {
  @override
  final DaprGrpcClient client;

  late final dp.DaprClient _daprClient;
  GrpcClientPubSub({required this.client}) {
    _daprClient = client.client;
  }

  @override
  Future<void> publish({
    required String pubSubName,
    required String topicName,
    Object? data,
    String contentType = 'application/json',
    PublishMetadata metadata = const PublishMetadata(),
  }) async {
    final _publishEventRequest = dp.PublishEventRequest(
      topic: topicName,
      pubsubName: pubSubName,
    );
    // Update PublishEventRequest request with data if data is not null and its
    // content type.
    if (data != null) {
      switch (data.runtimeType) {
        case ByteArray:
          _publishEventRequest.data = data as ByteArray;
          break;
        case String:
          _publishEventRequest.data = utf8.encode(data as String);
          break;
        default:
          _publishEventRequest.data = utf8.encode(jsonEncode(data));
          _publishEventRequest.dataContentType = contentType;
          break;
      }
    }
    await _daprClient.publishEvent(_publishEventRequest);
  }
}
