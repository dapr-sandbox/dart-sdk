import 'package:shelf_plus/shelf_plus.dart' as shp;

import '../../abstractions/server.dart';
import 'http_bindings.dart';
import 'http_invoker.dart';
import 'http_pub_sub.dart';
import 'http_server_impl.dart';

/// A http protocol based implementation of [Server].
///
/// Provides api to start a http server and stop using configuration such as
/// [serverHost] and [serverPort].
///
/// This implmentation uses shelf_plus package to setup the various http
/// handlers necessary to start a http server using shelf. This takes care of
/// assembling together various handlers from all the building blocks such as
/// [HttpServerPubSub], [HttpServerBinding], [HttpServerInvoker] which holds the
/// handlers for their respective rest endpoints and start the server.
///
/// In addition to component specific routes, this class also adds endpoints for
/// Dapr's generic services such as `/healthz`.
class DaprHttpServer implements Server<DaprHttpServer, HttpServerImpl> {
  /// Server host address eg: 127.0.0.1, my-custom-domain
  late final String serverHost;

  /// The port that will be used to serve the http server.
  late final int serverPort;

  /// Holds the ShelfRunContext instance which allows to control the server.
  late final shp.ShelfRunContext _shelfRunContext;
  @override
  late final DaprHttpServer server;

  @override
  late final HttpServerImpl implementation;

  /// Healthz handler and other Dapr generic handlers.
  shp.RouterPlus daprGenericRoutes = shp.RouterPlus();

  /// Initializes various configurations and sets up Dapr's generic endpoints
  /// such as `/healthz`.
  ///
  DaprHttpServer() {
    implementation = HttpServerImpl();

    /// https://github.com/dapr/go-sdk/blob/d9ad49d2a6036d4498979a486245236337b3083b/service/http/topic.go#L62
    daprGenericRoutes.get('/healthz', () => shp.Response.ok(null));

    // TODO: Add the configuration handler as well.
  }

  @override
  Future<void> start(String host, int port,
      {List<shp.Handler> handlers = const []}) async {
    serverPort = port;
    serverHost = host;
    _shelfRunContext = await shp.shelfRun(
      () => shp.cascade([...handlers, daprGenericRoutes]),
      defaultBindAddress: serverHost,
      defaultBindPort: serverPort,
      defaultEnableHotReload: false,
    );
  }

  @override
  Future<void> stop() async {
    await _shelfRunContext.close();
  }
}
