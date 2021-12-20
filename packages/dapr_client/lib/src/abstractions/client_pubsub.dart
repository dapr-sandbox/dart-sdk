import 'package:dapr_client/dapr_client.dart';

abstract class ClientPubSub<T> {
  /// The client for the chose protocol.
  T get client;
  Future<void> publish({
    required String pubSubName,
    required String topicName,
    Object? data,
    String contentType,
    PublishMetadata metadata,
  });
}
