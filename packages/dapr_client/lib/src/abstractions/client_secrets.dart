import 'package:dapr_common/dapr_common.dart';

abstract class ClientSecret<T> {
  /// The client for the chose protocol.
  T get client;

  Future<Map<String, dynamic>> get({
    required String secretStoreName,
    required String key,
    Map<String, String>? metadata,
  });

  Future<Map<String, SecretResponse>> getBulk({
    required String secretStoreName,
    Map<String, String>? metadata,
  });
}
