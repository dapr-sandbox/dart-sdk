import 'dart:convert';

import 'package:dapr_client/src/abstractions/client_binding.dart';
import 'package:dapr_client/src/implementations/grpc/grpc_client.dart';
import 'package:dapr_common/dapr_common.dart';

import 'package:dapr_proto/dapr_proto.dart' as dp;

class GrpcClientBinding implements ClientBinding<DaprGrpcClient> {
  @override
  DaprGrpcClient client;

  /// Note this is DaprClient from the dapr_proto package which enables a
  /// client communication with the dapr grpc sidecar server.
  late final dp.DaprClient _daprClient;
  GrpcClientBinding({required this.client}) {
    _daprClient = client.client;
  }

  @override
  Future<Object> send({
    required String bindingName,
    required OutputBindingEvent outputBindingEvent,
  }) async {
    final _invokeBindinRequest = dp.InvokeBindingRequest(
      data: utf8.encode(outputBindingEvent.data),
      metadata: outputBindingEvent.metadata,
      name: bindingName,
      operation: outputBindingEvent.operation,
    );
    final _result = await _daprClient.invokeBinding(_invokeBindinRequest);
    print(_result.toProto3Json());
    return OutputBindingEventResponse(
      data: utf8.decode(_result.data),
      metadata: _result.metadata,
    );
  }
}
