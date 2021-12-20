import 'dart:convert';

import 'http_server.dart';
import 'package:shelf_plus/shelf_plus.dart';
import 'package:dapr_common/dapr_common.dart';

import '../../abstractions/server_binding.dart';

/// A http based implementation of [ServerBinding].
class HttpServerBinding implements ServerBinding<DaprHttpServer> {
  @override
  final DaprHttpServer server;

  /// A constructor to intialize the [HttpServerBinding] with the server passed
  /// down from [DaprServer].
  HttpServerBinding({required this.server});

  /// All the http endpoints related to binding is registered in this handler.
  RouterPlus bindingsHandler = RouterPlus();
  @override
  Future<dynamic> receive({
    required String bindingName,
    required BindingCallback callback,
  }) async {
    print('Receive method called with binding name $bindingName');
    // Register a options endpoint with this binding name which will be used by // Dapr.
    //
    // Ref: https://docs.dapr.io/developing-applications/building-blocks/bindings/bindings-overview/#input-bindings
    bindingsHandler.options('/$bindingName', (req) {
      print('Options request is called.');
      return Response.ok('');
    });

    print('Options Handler setup');
    // Register the binding enpoint and assign the handler performing the
    // callback.
    // Return status code is doumented in the following.
    // https://docs.dapr.io/reference/api/bindings_api/#binding-payload
    bindingsHandler.post('/$bindingName', (Request req) async {
      final body = await req.body.asString;
      print(body);
      try {
        final bindingEvent = BindingEvent(
          data: body,
          metadata: req.headers,
        );
        await callback(bindingEvent);
        return Response.ok(null);
      } catch (e) {
        return Response.internalServerError(
          body: jsonEncode(
            {
              'error': e.toString(),
            },
          ),
        );
      }
    });
  }
}
