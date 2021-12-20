import 'package:dapr_common/dapr_common.dart';

abstract class ClientBinding<T> {
  /// The client for the chose protocol.
  T get client;
  Future<Object> send({
    required String bindingName,
    required OutputBindingEvent outputBindingEvent,
  });
}
