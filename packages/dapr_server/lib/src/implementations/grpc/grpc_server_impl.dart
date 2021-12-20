import 'dart:convert';

import 'package:dapr_common/dapr_common.dart';
import 'package:dapr_proto/dapr_proto.dart';
import 'package:grpc/service_api.dart';

/// An implementation of grpc runtime services defined by Dapr.
///
/// This implemention allows creating Daprised service using grpc protocol.
class GrpcServerImplementation extends AppCallbackServiceBase {
  /// A map for holding invoker callbacks
  Map<String, InvokerCallback> invokerCallbackMap = {};

  /// A map for holding pubsub callbacks
  Map<PubSubRoute, PubSubCallback> pubSubCallbackMap = {};

  /// A map for holding bindings callbacks
  Map<String, BindingCallback> bindingsCallbackMap = {};

  @override
  Future<ListInputBindingsResponse> listInputBindings(
    ServiceCall call,
    Empty request,
  ) async {
    var bindingNames = bindingsCallbackMap.keys;
    bindingNames = bindingNames.isEmpty ? [] : bindingNames;
    return ListInputBindingsResponse(
      bindings: bindingNames,
    );
  }

  @override
  Future<ListTopicSubscriptionsResponse> listTopicSubscriptions(
      ServiceCall call, Empty request) async {
    var subscriptions = <TopicSubscription>[];
    for (var pubSubRoute in pubSubCallbackMap.keys) {
      subscriptions.add(
        TopicSubscription(
          pubsubName: pubSubRoute.pubSubName,
          metadata: pubSubRoute.metadata,
          topic: pubSubRoute.topic,
          // TODO: Verify if routes needs to be set here. In go-sdk routes are
          //  not set. Neither in js-sdk. But Python-sdk sets this routes.
          //
          // Currently not setting routes.
          // As per the specifitcation Dapr only needs to know the topics which
          // are being subscribed by the service.
          // The route information comes in the [TopicEventRequest] passed in
          // onTopicEvent which contains the route information which can then
          // be parsed and mapped to the correct callback.
          //
          routes: TopicRoutes(rules: [
            TopicRule(path: pubSubRoute.route),
          ], default_2: pubSubRoute.route),
        ),
      );
    }
    return ListTopicSubscriptionsResponse(
      subscriptions: subscriptions,
    );
  }

  @override
  Future<BindingEventResponse> onBindingEvent(
      ServiceCall call, BindingEventRequest request) async {
    final bindingName = request.name;

    if (bindingsCallbackMap.containsKey(bindingName)) {
      final _callback = bindingsCallbackMap[bindingName];
      final _bindingEvent = BindingEvent(
        data: utf8.decode(request.data),
        metadata: request.metadata,
      );
      await _callback!(_bindingEvent);
      return BindingEventResponse();
    }
    throw UnimplementedError('Input binding for $bindingName is not found');
  }

  @override
  Future<InvokeResponse> onInvoke(
      ServiceCall call, InvokeRequest request) async {
    final methodName = request.method.toLowerCase();
    final httpMethod = request.httpExtension.verb.name.toLowerCase();
    final cbKey = '$methodName-$httpMethod';

    if (invokerCallbackMap.containsKey(cbKey)) {
      final _callBack = invokerCallbackMap[cbKey];
      final _body = utf8.decode(request.data.value);
      final queryMap = queryParamStringToMap(request.httpExtension.querystring);
      final _result = await _callBack!(
        InvokerCallbackContent(
          body: _body,
          query: queryMap,
          metadata: InvokerCallbackMetadata(
            contentType: request.contentType,
          ),
        ),
      );
      final respData = _result is String ? _result : jsonEncode(_result);
      final invokeResponse = InvokeResponse(
        data: Any(
          value: utf8.encode(respData),
        ),
        contentType: 'application/json',
      );
      return invokeResponse;
    }

    throw UnimplementedError('Requested method $methodName is not implemented');
  }

  @override
  Future<TopicEventResponse> onTopicEvent(
    ServiceCall call,
    TopicEventRequest request,
  ) async {
    final pubsubName = request.pubsubName;
    final topic = request.topic;
    final route = request.path;
    // final metaData = request.;
    final pubSubRoute = PubSubRoute(
      pubSubName: pubsubName,
      route: route,
      topic: topic,
      // metadata: metaData ?? {},
    );

    if (pubSubCallbackMap.containsKey(pubSubRoute)) {
      final _callback = pubSubCallbackMap[pubSubRoute];
      // Decode bytes to string assuming it as utf8Encoded.
      var _tmpData = utf8.decode(request.data);
      late final dynamic _data;
      if (request.dataContentType.contains("text/plain")) {
        _data = _tmpData;
      } else if (request.dataContentType.startsWith("application/") &&
          request.dataContentType.endsWith("json")) {
        _data = jsonDecode(_tmpData);
      } else {
        _data = _tmpData;
      }
      final _ce = CloudEvent(
        id: request.id,
        source: Uri.parse(request.source),
        data: _data,
        dataContentType: request.dataContentType,
        specVersion: request.specVersion,
        type: request.type,
      );

      final _result = await _callback!(_ce);

      final _status = _result.when(
        success: () => TopicEventResponse_TopicEventResponseStatus.SUCCESS,
        drop: () => TopicEventResponse_TopicEventResponseStatus.DROP,
        retry: () => TopicEventResponse_TopicEventResponseStatus.RETRY,
        error: () => TopicEventResponse_TopicEventResponseStatus.RETRY,
      );
      return TopicEventResponse(status: _status);
    }
    throw UnimplementedError(
        'The topic $topic in the PubSub component $pubsubName is not subscribed by any callback with this route name $route');
  }
}
