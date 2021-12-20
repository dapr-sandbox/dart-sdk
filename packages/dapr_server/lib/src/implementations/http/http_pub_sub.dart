import 'dart:convert';

import 'package:dapr_common/dapr_common.dart';
import 'http_server.dart';
import 'package:shelf_plus/shelf_plus.dart';

import '../../abstractions/server_pub_sub.dart';

/// A http based implementation of [ServerPubSub]
class HttpServerPubSub implements ServrePubSub<DaprHttpServer> {
  @override
  final DaprHttpServer server;

  /// The router plus handler to which the new routes related to pubsub will
  /// be added.
  final RouterPlus pubSubHandler = RouterPlus();

  /// Holds a list of routes mapped to a one or more topics in one or more
  /// deployed pubsub components
  final List<PubSubRoute> pubSubRoutes = <PubSubRoute>[];

  /// A constructor to intialize the [HttpServerPubSub] with the server passed
  /// down from [DaprServer].
  ///
  /// Also adds the list of
  /// subscriber as a handler as per the requirement of dapr under the endpoint
  /// '/dapr/subscribe/'.
  HttpServerPubSub({required this.server}) {
    pubSubHandler.get('/dapr/subscribe', (req) async {
      final result = jsonEncode(pubSubRoutes);
      return Response.ok(result);
    });
  }

  @override
  Future<void> subscribe({
    required String pubSubName,
    required String topic,
    required PubSubCallback callback,
    String? route,
    bool rawEvents = false,
  }) async {
    final _route = route ?? 'route-$pubSubName-$topic';
    // Add the pub sub route to the list. This list will used for the
    // `dapr/subscribe` route.
    pubSubRoutes.add(
      PubSubRoute(
        pubSubName: pubSubName,
        topic: topic,
        route: _route,
        metadata: {
          'rawPayload': rawEvents.toString(),
        },
      ),
    );

    // Setup post route for the subscription.
    pubSubHandler.add(
      'post',
      '/$_route',
      (Request request) async {
        try {
          final body = await request.body.asString;
          // print('for route $_route body is $body');
          final result = await callback(body);
          // Send back response to dapr.
          //  ref: https://github.com/dapr/go-sdk/blob/d9ad49d2a6/service/http/topic.go#L186
          // https://github.com/dapr/go-sdk/blob/d9ad49d2a6/service/http/topic.go#L186
          return result.when<Response>(
            success: () => Response.ok(jsonEncode({'status': 'SUCCESS'})),
            drop: () => Response.ok(jsonEncode({'status': 'DROP'})),
            retry: () => Response.ok(jsonEncode({'status': 'RETRY'})),
            error: () => Response.internalServerError(),
          );
        } on Exception {
          return Response.internalServerError();
        }
      },
    );
  }
}
