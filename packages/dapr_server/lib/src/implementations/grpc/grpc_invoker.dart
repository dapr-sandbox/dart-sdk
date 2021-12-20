import 'package:dapr_common/dapr_common.dart';
import 'grpc_server_impl.dart';

import '../../abstractions/server_invoker.dart';
import 'grpc_server.dart';

/// A grpc protocol based implementation of [serverInvoker].
///
/// Provides api to register callback for method invokation event.
class GrpcServerInvoker implements ServerInvoker<DaprGrpcServer> {
  @override
  final DaprGrpcServer server;

  /// A constructor to intialize the [GrpcServerPubSub] with the server passed
  /// down from [DaprServer].
  GrpcServerInvoker({required this.server});

  /// Simply maps the callback to the method name in a map maintained by the
  /// [GrpcServerImplementation] which is then used in
  /// [GrpcServerImplementation.onInvoke] method to perform the call back on
  /// the invoker event.
  @override
  Future<dynamic> listen({
    required String methodName,
    required InvokerCallback callback,
    required InvokerCallbackOptions callbackOptions,
  }) async {
    server.implementation.invokerCallbackMap.putIfAbsent(
      '${methodName.toLowerCase()}-${callbackOptions.method.nameLower}',
      () => callback,
    );
  }
}
