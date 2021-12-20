import 'package:grpc/grpc.dart' as grpc;

import '../../abstractions/server.dart';
import 'grpc_server_impl.dart';

/// A grpc based implementation of [Server] to provide API to write daperized
/// grpc services.
class DaprGrpcServer implements Server<grpc.Server, GrpcServerImplementation> {
  /// Server host address eg: 127.0.0.1, my-custom-domain
  late final String serverHost;

  /// The port that will be used to serve the http server.
  late final int serverPort;

  @override
  late final GrpcServerImplementation implementation;

  @override
  late final grpc.Server server;

  /// A list of external [grpc.Service] to be served alongside the Daperised
  /// services.
  List<grpc.Service> extServices;

  /// Setup the implemn
  DaprGrpcServer({this.extServices = const []}) {
    implementation = GrpcServerImplementation();
    server = grpc.Server([
      implementation,
      ...extServices, // Add externally provided gRpc services.
    ]);
  }
  @override
  Future<void> start(
    String host,
    int port,
  ) {
    /// Start the grpc server.
    return server.serve(
      address: host,
      port: port,
    );
  }

  @override
  Future<void> stop() {
    /// Stop the grpc server
    return server.shutdown();
  }
}
