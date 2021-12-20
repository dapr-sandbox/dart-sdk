import 'package:dapr_common/dapr_common.dart';

import '../../abstractions/server_pub_sub.dart';
import 'grpc_server.dart';

/// A grpc based implmentation of [ServerPubSub]
class GrpcServerPubSub implements ServrePubSub<DaprGrpcServer> {
  @override
  DaprGrpcServer server;

  /// A constructor to intialize the [GrpcServerPubSub] with the server passed
  /// down from [DaprServer].
  GrpcServerPubSub({required this.server});

  @override
  Future<void> subscribe({
    required String pubSubName,
    required String topic,
    required PubSubCallback callback,
    String? route,
    bool rawEvents = false,
  }) async {
    server.implementation.pubSubCallbackMap.putIfAbsent(
      PubSubRoute(
        pubSubName: pubSubName,
        topic: topic,
        route: route ?? '',
      ),
      () => callback,
    );
  }
}
