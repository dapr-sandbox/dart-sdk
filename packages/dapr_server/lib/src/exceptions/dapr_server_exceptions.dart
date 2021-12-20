/// A general exception that can be thrown from the dapr_server api.
///
/// Maybe used for general errors related to server startup, initialization,
/// and configuration exceptions.
class DaprServerException implements Exception {
  /// A string message detailing the exception.
  final String message;

  /// A base exception for Dapr server api.
  DaprServerException({required this.message});
  @override
  String toString() => 'A DaprServerException occured : \n $message';
}

/// All exceptions relavant to the Invoker api should throw this error.
class DaprServerInvokerException implements Exception {
  final String message;
  DaprServerInvokerException({required this.message});
}

/// All exceptions relavant to the Binding api should throw this error.
class DaprServerBindingException implements Exception {
  final String message;
  DaprServerBindingException({required this.message});
}

/// All exceptions relavant to the PubSub api should throw this error.
class DaprServerPubSubException implements Exception {
  final String message;
  DaprServerPubSubException({required this.message});
}
