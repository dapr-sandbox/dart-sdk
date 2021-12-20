import 'dart:convert';
import 'package:dapr_common/dapr_common.dart';
import 'package:dapr_proto/dapr_proto.dart' as dp;

import '../../abstractions/client_state.dart';
import 'grpc_client.dart';

class GrpcClientState implements ClientState<DaprGrpcClient> {
  @override
  final DaprGrpcClient client;

  /// Note this is DaprClient from the dapr_proto package which enables a
  /// client communication with the dapr grpc sidecar server.
  late final dp.DaprClient _daprClient;

  GrpcClientState({required this.client}) {
    _daprClient = client.client;
  }

  @override
  Future<void> delete({required String storeName, required String key}) async {
    final _deleteStateRequest = dp.DeleteStateRequest(
      storeName: storeName,
      key: key,
    );
    await _daprClient.deleteState(_deleteStateRequest);
  }

  @override
  Future<dynamic> get({required String storeName, required String key}) async {
    final _getStateRequest = dp.GetStateRequest(storeName: storeName, key: key);
    final _result = await _daprClient.getState(_getStateRequest);
    final _utfDecoded = utf8.decode(_result.data);
    late final _jsonResult = _jsonDecodeUtil(_utfDecoded);
    return _jsonResult;
  }

  @override
  Future<List<BulkStateItem>> getBulk(
      {required String storeName,
      required List<String> keys,
      int parallelism = 10,
      Map<String, String> metadata = const {}}) async {
    final _getBulkStateRequest = dp.GetBulkStateRequest(
      storeName: storeName,
      keys: keys,
      parallelism: parallelism,
      metadata: metadata,
    );

    final _bulkStateResponse =
        await _daprClient.getBulkState(_getBulkStateRequest);

    final _bulkStateResponseItems = _bulkStateResponse.items;

    final _bulkStateItems = <BulkStateItem>[];
    for (var res in _bulkStateResponseItems) {
      _bulkStateItems.add(
        BulkStateItem(
          key: res.key,
          etag: res.etag,
          data: _jsonDecodeUtil(
            utf8.decode(res.data),
          ),
        ),
      );
    }
    return _bulkStateItems;
  }

  @override
  Future<void> save({
    required String storeName,
    required List<SaveStateItem> stateObjects,
  }) async {
    final _stateItems = <dp.StateItem>[];
    for (var so in stateObjects) {
      final _si = dp.StateItem()
        ..key = so.key
        ..value = utf8.encode(
            so.value is Map ? jsonEncode(so.value) : so.value.toString());
      _stateItems.add(_si);
    }
    final _saveStateRequest = dp.SaveStateRequest(
      storeName: storeName,
      states: _stateItems,
    );
    await _daprClient.saveState(_saveStateRequest);
  }

  @override
  Future<void> transaction(
      {required String storeName,
      List<StateOperation>? operations,
      Map<String, String>? metadata}) async {
    final _transactionalStateOperations = operations
        ?.map(
          (e) => dp.TransactionalStateOperation(
            operationType: e.operation,
            request: dp.StateItem(
              key: e.request.key,
              value: utf8.encode(e.request.value ?? ''),
            ),
          ),
        )
        .toList();
    final _executeStateTransactionRequest = dp.ExecuteStateTransactionRequest(
      storeName: storeName,
      metadata: metadata,
      operations: _transactionalStateOperations,
    );
    await _daprClient.executeStateTransaction(_executeStateTransactionRequest);
  }

  /// jsonDecode will throw error for a simple string value.
  /// Thats why the try catch block allows us to capture the format exception
  /// which is raised when pasisng a simple string which is not json decodable.
  dynamic _jsonDecodeUtil(String json) {
    try {
      return jsonDecode(json);
    } on FormatException catch (_) {
      return json;
    }
  }
}
