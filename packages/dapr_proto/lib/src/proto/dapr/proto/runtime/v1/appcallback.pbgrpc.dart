///
//  Generated code. Do not modify.
//  source: dapr/proto/runtime/v1/appcallback.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../common/v1/common.pb.dart' as $0;
import '../../../../google/protobuf/empty.pb.dart' as $1;
import 'appcallback.pb.dart' as $2;
export 'appcallback.pb.dart';

class AppCallbackClient extends $grpc.Client {
  static final _$onInvoke =
      $grpc.ClientMethod<$0.InvokeRequest, $0.InvokeResponse>(
          '/dapr.proto.runtime.v1.AppCallback/OnInvoke',
          ($0.InvokeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.InvokeResponse.fromBuffer(value));
  static final _$listTopicSubscriptions =
      $grpc.ClientMethod<$1.Empty, $2.ListTopicSubscriptionsResponse>(
          '/dapr.proto.runtime.v1.AppCallback/ListTopicSubscriptions',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListTopicSubscriptionsResponse.fromBuffer(value));
  static final _$onTopicEvent =
      $grpc.ClientMethod<$2.TopicEventRequest, $2.TopicEventResponse>(
          '/dapr.proto.runtime.v1.AppCallback/OnTopicEvent',
          ($2.TopicEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.TopicEventResponse.fromBuffer(value));
  static final _$listInputBindings =
      $grpc.ClientMethod<$1.Empty, $2.ListInputBindingsResponse>(
          '/dapr.proto.runtime.v1.AppCallback/ListInputBindings',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListInputBindingsResponse.fromBuffer(value));
  static final _$onBindingEvent =
      $grpc.ClientMethod<$2.BindingEventRequest, $2.BindingEventResponse>(
          '/dapr.proto.runtime.v1.AppCallback/OnBindingEvent',
          ($2.BindingEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BindingEventResponse.fromBuffer(value));

  AppCallbackClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.InvokeResponse> onInvoke($0.InvokeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$onInvoke, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListTopicSubscriptionsResponse>
      listTopicSubscriptions($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listTopicSubscriptions, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.TopicEventResponse> onTopicEvent(
      $2.TopicEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$onTopicEvent, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListInputBindingsResponse> listInputBindings(
      $1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInputBindings, request, options: options);
  }

  $grpc.ResponseFuture<$2.BindingEventResponse> onBindingEvent(
      $2.BindingEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$onBindingEvent, request, options: options);
  }
}

abstract class AppCallbackServiceBase extends $grpc.Service {
  $core.String get $name => 'dapr.proto.runtime.v1.AppCallback';

  AppCallbackServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InvokeRequest, $0.InvokeResponse>(
        'OnInvoke',
        onInvoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InvokeRequest.fromBuffer(value),
        ($0.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.ListTopicSubscriptionsResponse>(
        'ListTopicSubscriptions',
        listTopicSubscriptions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.ListTopicSubscriptionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TopicEventRequest, $2.TopicEventResponse>(
        'OnTopicEvent',
        onTopicEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TopicEventRequest.fromBuffer(value),
        ($2.TopicEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.ListInputBindingsResponse>(
        'ListInputBindings',
        listInputBindings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.ListInputBindingsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.BindingEventRequest, $2.BindingEventResponse>(
            'OnBindingEvent',
            onBindingEvent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.BindingEventRequest.fromBuffer(value),
            ($2.BindingEventResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.InvokeResponse> onInvoke_Pre(
      $grpc.ServiceCall call, $async.Future<$0.InvokeRequest> request) async {
    return onInvoke(call, await request);
  }

  $async.Future<$2.ListTopicSubscriptionsResponse> listTopicSubscriptions_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return listTopicSubscriptions(call, await request);
  }

  $async.Future<$2.TopicEventResponse> onTopicEvent_Pre($grpc.ServiceCall call,
      $async.Future<$2.TopicEventRequest> request) async {
    return onTopicEvent(call, await request);
  }

  $async.Future<$2.ListInputBindingsResponse> listInputBindings_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return listInputBindings(call, await request);
  }

  $async.Future<$2.BindingEventResponse> onBindingEvent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.BindingEventRequest> request) async {
    return onBindingEvent(call, await request);
  }

  $async.Future<$0.InvokeResponse> onInvoke(
      $grpc.ServiceCall call, $0.InvokeRequest request);
  $async.Future<$2.ListTopicSubscriptionsResponse> listTopicSubscriptions(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$2.TopicEventResponse> onTopicEvent(
      $grpc.ServiceCall call, $2.TopicEventRequest request);
  $async.Future<$2.ListInputBindingsResponse> listInputBindings(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$2.BindingEventResponse> onBindingEvent(
      $grpc.ServiceCall call, $2.BindingEventRequest request);
}
