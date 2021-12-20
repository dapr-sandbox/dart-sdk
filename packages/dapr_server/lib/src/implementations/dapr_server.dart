import 'dart:io';

import 'package:dapr_common/dapr_common.dart';
import 'package:shelf_plus/shelf_plus.dart' as shp;

import '../abstractions/server_binding.dart';
import '../abstractions/server_invoker.dart';
import '../abstractions/server_pub_sub.dart';
import 'grpc/grpc_binding.dart';
import 'grpc/grpc_invoker.dart';
import 'grpc/grpc_pubsub.dart';
import 'grpc/grpc_server.dart';
import 'http/http_bindings.dart';
import 'http/http_invoker.dart';
import 'http/http_pub_sub.dart';
import 'http/http_server.dart';

/// This provides the necessary api's to create the Invoker, Binding, and
/// Pubsub building blocks using both http and grpc protocols.
///
/// This api takes care of adhering to the specifications of Dapr API for each
/// building block providing a unified experience of creating different building
/// blocks using Dart.
///
/// When [communicationProtocol] is http, then a shelf server is started with
/// different building blocks exposed as REST endpoints which will be accessed
/// by the Dapr sidecar on various events from components configured while
/// while running the [DaprServer].
///
/// When [communicationProtocol] is set as grpc, the building blocks are exposed
/// as grpc services can be accessed by the Dapr side car using the grpc
/// protocol.
class DaprServer {
  /// Defaults to 127.0.0.1
  final String serverHost;

  /// Defaults to the APP_PORT environment variable set by Dapr.
  late final int _serverPort;

  /// Defaults to 127.0.0.1
  final String daprHost;

  /// Defaults to the DAPR_HTTP_PORT or DAPR_GRPC_PORT environment variable set
  /// by Dapr.
  late final int? _daprPort;

  /// Defaults to [CommunicationProtocol.http]
  final CommunicationProtocol communicationProtocol;

  /// The server instance depending on the choice of [communicationProtocol].
  late final dynamic server;

  /// Provides api to create a service invoker building block
  late final ServerInvoker invoker;

  /// Provides api to subscribe to a topic via a pubsub component.
  late final ServrePubSub pubsub;

  /// Provides api to create an Input binding.
  late final ServerBinding binding;

  /// A list of [Shelfplus.Handler] which can be additionally deployed
  /// alongside the rest endpoints of different building blocks.
  ///
  /// Note: This handlers are only used when the [communicationProtocol] is
  /// [CommunicationProtocol.http].
  final List<shp.Handler> _externalHttpRouteHandlers = [];

  /// Creates a [DaprServer] instance based on the [communicationProtocol].
  ///
  /// Additionally bootstraps the properties [invoker], [pubsub], [binding]
  /// which provides helper methods to create the respective building blocks.
  DaprServer({
    this.serverHost = DaprConf.defAppHost,
    int? serverPort,
    this.daprHost = DaprConf.defDaprHost,
    int? daprPort,
    this.communicationProtocol = CommunicationProtocol.http,
    List<shp.Handler> additionalRouteHandlers = const [],
  }) {
    // set default values from configurations if the environment variables is
    // not set or the port is not provided.
    _serverPort = serverPort ??=
        int.tryParse(Platform.environment['APP_PORT'] ?? '') ??
            DaprConf.defHttpAppPort;
    // set default values from configurations if the environment variables is
    // not set or the port is not provided.
    _daprPort = daprPort ??= int.tryParse(Platform.environment[
            communicationProtocol == CommunicationProtocol.http
                ? 'DAPR_HTTP_PORT'
                : 'DAPR_GRPC_PORT'] ??
        '');
    _daprPort ??= communicationProtocol == CommunicationProtocol.http
        ? DaprConf.defDaprHttpPort
        : DaprConf.defDaprGrpcPort;
    _externalHttpRouteHandlers.addAll(additionalRouteHandlers);
    switch (communicationProtocol) {
      case CommunicationProtocol.grpc:
        server = DaprGrpcServer();
        invoker = GrpcServerInvoker(server: server);
        binding = GrpcServerBinding(server: server);
        pubsub = GrpcServerPubSub(server: server);
        break;
      case CommunicationProtocol.http:
      default:
        server = DaprHttpServer();
        invoker = HttpServerInvoker(server: server);
        pubsub = HttpServerPubSub(server: server);
        binding = HttpServerBinding(server: server);
    }
  }

  /// Start the underlying server based on the [communicationProtocol].
  Future<void> startServer() async {
    if (communicationProtocol == CommunicationProtocol.http) {
      var _server = server as DaprHttpServer;
      var _invoker = invoker as HttpServerInvoker;
      var _pubsub = pubsub as HttpServerPubSub;
      var _binding = binding as HttpServerBinding;

      /// Start the http server.
      await _server.start(
        serverHost,
        _serverPort,
        handlers: [
          _binding.bindingsHandler,
          _pubsub.pubSubHandler,
          _invoker.invokerHandler,
          ..._externalHttpRouteHandlers,
        ],
      );
    } else {
      var _server = server as DaprGrpcServer;
      _server.start(serverHost, _serverPort);
    }
  }

  /// Stops the underlying server and releases the server resources.
  Future<void> stop() async {
    await server.stop();
  }
}
