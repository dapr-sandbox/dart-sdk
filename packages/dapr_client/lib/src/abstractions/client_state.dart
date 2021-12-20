import 'dart:async';
import 'package:dapr_common/dapr_common.dart';

abstract class ClientState<T> {
  /// The client for the chose protocol.
  T get client;

  Future<void> save({
    required String storeName,
    required List<SaveStateItem> stateObjects,
  });

  /// The result can be of any type which is json encodable.
  /// So the return cannot be expresed as a String or Map. The current choice
  /// without a sealed or union class is to opt for dynamic.
  ///
  /// TODO: Perhaps a Freezed based Union class could be used. But in that
  ///  case which types needs to be supported is still a question.
  Future<dynamic> get({
    required String storeName,
    required String key,
    // TODO: add options for passing metadata and state options
    // StateOptions? options,
  });

  Future<List<BulkStateItem>> getBulk({
    required String storeName,
    required List<String> keys,
    int parallelism = 10,
    Map<String, String> metadata = const {},
  });

  Future<void> delete({
    required String storeName,
    required String key,
    // TODO: add options for passing metadata and state options
    // StateOptions? options,
  });

  Future<void> transaction({
    required String storeName,
    List<StateOperation>? operations,
    Map<String, String>? metadata,
  });
}

