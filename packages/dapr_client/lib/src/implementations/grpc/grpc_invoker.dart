import 'dart:convert';

import '../../abstractions/client_invoker.dart';
import 'grpc_client.dart';
import 'package:dapr_common/dapr_common.dart';
import 'package:dapr_proto/dapr_proto.dart' as dp;

class GrpcClientInvoker implements ClientInvoker<DaprGrpcClient> {
  @override
  final DaprGrpcClient client;
  late final dp.DaprClient _daprClient;
  GrpcClientInvoker({required this.client}) {
    _daprClient = client.client;
  }

  dp.HTTPExtension_Verb mapToHttpExtensionVerb(HttpMethod httpMethod) {
    switch (httpMethod) {
      case HttpMethod.post:
        return dp.HTTPExtension_Verb.POST;
      case HttpMethod.delete:
        return dp.HTTPExtension_Verb.DELETE;
      case HttpMethod.put:
        return dp.HTTPExtension_Verb.PUT;
      case HttpMethod.get:
      default:
        return dp.HTTPExtension_Verb.GET;
    }
  }

  // TODO: There are so many parameters which are not completely understood.
  //  This implementation should be revisited.
  @override
  Future<Object> invoke(
      {required String appId,
      required String methodName,
      required HttpMethod httpMethod,
      Object? data}) async {
    final _jsonEncodedData =
        data is String && data.isEmpty ? data : jsonEncode(data);
    final _invokeRequest = dp.InvokeRequest(
      data: dp.Any(
        value: utf8.encode(_jsonEncodedData),
      ),
      httpExtension: dp.HTTPExtension(
        verb: mapToHttpExtensionVerb(httpMethod),
      ),
      contentType: 'application/json',
      method: methodName,
    );
    final _invokeServiceRequest = dp.InvokeServiceRequest(
      id: appId,
      message: _invokeRequest,
    );
    var _result = await _daprClient.invokeService(
      _invokeServiceRequest,
    );
    var _finalResult = utf8.decode(_result.data.value);
    return _finalResult;
  }
}
