import 'server_binding.dart';
import 'server_invoker.dart';
import 'server_pub_sub.dart';

/// A server wrapping various user defined services such as topic subscritions,
/// remote method invokation and input binding.
///
/// All the server instances should implement this interface inorder to provide
/// a unified development experience using different protocols.
abstract class Server<T, I> {
  // String get serverAddress;
  /// The current instance of the server running.
  T get server;

  /// The implementation instance which handles the method delegations from the
  /// [ServerBinding], [ServerInvoker] and [ServrePubSub] interfaces.
  I get implementation;

  /// Stop the server and release the resources.
  Future<void> stop();

  /// Start the server with the provided host and port bindings.
  Future<void> start(String host, int port);
}
