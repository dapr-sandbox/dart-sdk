import 'package:dapr_common/dapr_common.dart';

/// Abstract definition for Service Invoker.
abstract class ServerInvoker<T> {
  /// The main server instance running the server.
  T get server;

  /// Registers a http enpoint on the [methodname] for the [HttpMethod] passed
  /// in via [callbackOptions.method]. On the invokation of this endpoint, the
  /// provided [callback] will be called with an instance of
  /// [InvokerCallbackContent] built using the data, queryParams, and other
  /// information passed in the request to this endpoint.
  ///
  /// Note:[methodName] is case insensitive.
  Future<dynamic> listen({
    required String methodName,
    required InvokerCallback callback,
    required InvokerCallbackOptions callbackOptions,
  });
}
