import 'package:dapr_common/dapr_common.dart';

import '../../abstractions/server_binding.dart';
import 'grpc_server.dart';

/// A grpc based implmentation of [ServerBinding]
class GrpcServerBinding implements ServerBinding<DaprGrpcServer> {
  @override
  final DaprGrpcServer server;

  /// A constructor to intialize the [GrpcServerPubSub] with the server passed
  /// down from [DaprServer].
  GrpcServerBinding({required this.server});
  @override
  Future<void> receive(
      {required String bindingName, required BindingCallback callback}) async {
    server.implementation.bindingsCallbackMap
        .putIfAbsent(bindingName, () => callback);
  }
}
