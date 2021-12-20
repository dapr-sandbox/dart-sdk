import '../../../dapr_common.dart';

typedef BindingCallback = Future<dynamic> Function(BindingEvent data);
typedef PubSubCallback = Future<PubSubResponse> Function(dynamic data);

typedef InvokerCallback = Future<dynamic> Function(InvokerCallbackContent data);
