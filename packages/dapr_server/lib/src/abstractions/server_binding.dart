import 'package:dapr_common/dapr_common.dart';

/// Class defining the methods to create Inputbindings.
abstract class ServerBinding<T> {
  /// The main server instance running the server.
  dynamic get server;

  /// A method to setup the input binding using a callback method of type
  /// [BindingCallback].
  Future<dynamic> receive(
      {required String bindingName, required BindingCallback callback});
}
