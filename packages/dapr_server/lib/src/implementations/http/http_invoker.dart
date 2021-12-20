import 'package:dapr_common/dapr_common.dart';
import 'http_server.dart';
import 'package:shelf_plus/shelf_plus.dart';

import '../../abstractions/server_invoker.dart';

/// A http based implementation of [ServerInvoker]
class HttpServerInvoker implements ServerInvoker<DaprHttpServer> {
  @override
  final DaprHttpServer server;

  /// A constructor to intialize the [HttpServerInvoker] with the server passed
  /// down from [DaprServer].
  HttpServerInvoker({required this.server});

  /// The router plus handler to which the new routes related to invoker will
  /// be added.
  final RouterPlus invokerHandler = RouterPlus();

  @override
  Future<dynamic> listen({
    required String methodName,
    required InvokerCallback callback,
    required InvokerCallbackOptions callbackOptions,
  }) async {
    invokerHandler.add(
      callbackOptions.method.name,
      '/$methodName',
      _genericHandler(callback),
    );
  }

  /// A generic handler for all the http methods.
  ///
  /// The provided callback will be called with a [InvokerCallbackContent]
  /// instance built using the information from [request].
  Function _genericHandler(InvokerCallback callback) {
    return (Request req) async {
      final body = await req.body.asString;
      late final dynamic cbResp;
      try {
        cbResp = await callback(
          InvokerCallbackContent(
            body: body,
            query: req.url.queryParameters,
            metadata: InvokerCallbackMetadata(
              contentType: req.headers['Content-type'],
            ),
          ),
        );
        return Response.ok(cbResp);
      } on Exception catch (e) {
        return Response.internalServerError(body: e);
      }
    };
  }
}
