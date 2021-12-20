///
//  Generated code. Do not modify.
//  source: dapr/proto/runtime/v1/dapr.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'dapr.pb.dart' as $0;
import '../../common/v1/common.pb.dart' as $1;
import '../../../../google/protobuf/empty.pb.dart' as $2;
export 'dapr.pb.dart';

class DaprClient extends $grpc.Client {
  static final _$invokeService =
      $grpc.ClientMethod<$0.InvokeServiceRequest, $1.InvokeResponse>(
          '/dapr.proto.runtime.v1.Dapr/InvokeService',
          ($0.InvokeServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InvokeResponse.fromBuffer(value));
  static final _$getState =
      $grpc.ClientMethod<$0.GetStateRequest, $0.GetStateResponse>(
          '/dapr.proto.runtime.v1.Dapr/GetState',
          ($0.GetStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetStateResponse.fromBuffer(value));
  static final _$getBulkState =
      $grpc.ClientMethod<$0.GetBulkStateRequest, $0.GetBulkStateResponse>(
          '/dapr.proto.runtime.v1.Dapr/GetBulkState',
          ($0.GetBulkStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetBulkStateResponse.fromBuffer(value));
  static final _$saveState = $grpc.ClientMethod<$0.SaveStateRequest, $2.Empty>(
      '/dapr.proto.runtime.v1.Dapr/SaveState',
      ($0.SaveStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$queryStateAlpha1 =
      $grpc.ClientMethod<$0.QueryStateRequest, $0.QueryStateResponse>(
          '/dapr.proto.runtime.v1.Dapr/QueryStateAlpha1',
          ($0.QueryStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryStateResponse.fromBuffer(value));
  static final _$deleteState =
      $grpc.ClientMethod<$0.DeleteStateRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/DeleteState',
          ($0.DeleteStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteBulkState =
      $grpc.ClientMethod<$0.DeleteBulkStateRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/DeleteBulkState',
          ($0.DeleteBulkStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$executeStateTransaction =
      $grpc.ClientMethod<$0.ExecuteStateTransactionRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/ExecuteStateTransaction',
          ($0.ExecuteStateTransactionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$publishEvent =
      $grpc.ClientMethod<$0.PublishEventRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/PublishEvent',
          ($0.PublishEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$invokeBinding =
      $grpc.ClientMethod<$0.InvokeBindingRequest, $0.InvokeBindingResponse>(
          '/dapr.proto.runtime.v1.Dapr/InvokeBinding',
          ($0.InvokeBindingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InvokeBindingResponse.fromBuffer(value));
  static final _$getSecret =
      $grpc.ClientMethod<$0.GetSecretRequest, $0.GetSecretResponse>(
          '/dapr.proto.runtime.v1.Dapr/GetSecret',
          ($0.GetSecretRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetSecretResponse.fromBuffer(value));
  static final _$getBulkSecret =
      $grpc.ClientMethod<$0.GetBulkSecretRequest, $0.GetBulkSecretResponse>(
          '/dapr.proto.runtime.v1.Dapr/GetBulkSecret',
          ($0.GetBulkSecretRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetBulkSecretResponse.fromBuffer(value));
  static final _$registerActorTimer =
      $grpc.ClientMethod<$0.RegisterActorTimerRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/RegisterActorTimer',
          ($0.RegisterActorTimerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$unregisterActorTimer =
      $grpc.ClientMethod<$0.UnregisterActorTimerRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/UnregisterActorTimer',
          ($0.UnregisterActorTimerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$registerActorReminder =
      $grpc.ClientMethod<$0.RegisterActorReminderRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/RegisterActorReminder',
          ($0.RegisterActorReminderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$unregisterActorReminder =
      $grpc.ClientMethod<$0.UnregisterActorReminderRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/UnregisterActorReminder',
          ($0.UnregisterActorReminderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$getActorState =
      $grpc.ClientMethod<$0.GetActorStateRequest, $0.GetActorStateResponse>(
          '/dapr.proto.runtime.v1.Dapr/GetActorState',
          ($0.GetActorStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetActorStateResponse.fromBuffer(value));
  static final _$executeActorStateTransaction =
      $grpc.ClientMethod<$0.ExecuteActorStateTransactionRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/ExecuteActorStateTransaction',
          ($0.ExecuteActorStateTransactionRequest value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$invokeActor =
      $grpc.ClientMethod<$0.InvokeActorRequest, $0.InvokeActorResponse>(
          '/dapr.proto.runtime.v1.Dapr/InvokeActor',
          ($0.InvokeActorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InvokeActorResponse.fromBuffer(value));
  static final _$getConfigurationAlpha1 = $grpc.ClientMethod<
          $0.GetConfigurationRequest, $0.GetConfigurationResponse>(
      '/dapr.proto.runtime.v1.Dapr/GetConfigurationAlpha1',
      ($0.GetConfigurationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetConfigurationResponse.fromBuffer(value));
  static final _$subscribeConfigurationAlpha1 = $grpc.ClientMethod<
          $0.SubscribeConfigurationRequest, $0.SubscribeConfigurationResponse>(
      '/dapr.proto.runtime.v1.Dapr/SubscribeConfigurationAlpha1',
      ($0.SubscribeConfigurationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SubscribeConfigurationResponse.fromBuffer(value));
  static final _$getMetadata =
      $grpc.ClientMethod<$2.Empty, $0.GetMetadataResponse>(
          '/dapr.proto.runtime.v1.Dapr/GetMetadata',
          ($2.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetMetadataResponse.fromBuffer(value));
  static final _$setMetadata =
      $grpc.ClientMethod<$0.SetMetadataRequest, $2.Empty>(
          '/dapr.proto.runtime.v1.Dapr/SetMetadata',
          ($0.SetMetadataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$shutdown = $grpc.ClientMethod<$2.Empty, $2.Empty>(
      '/dapr.proto.runtime.v1.Dapr/Shutdown',
      ($2.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  DaprClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.InvokeResponse> invokeService(
      $0.InvokeServiceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invokeService, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetStateResponse> getState($0.GetStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getState, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBulkStateResponse> getBulkState(
      $0.GetBulkStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBulkState, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> saveState($0.SaveStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveState, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryStateResponse> queryStateAlpha1(
      $0.QueryStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryStateAlpha1, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteState($0.DeleteStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteState, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteBulkState(
      $0.DeleteBulkStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBulkState, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> executeStateTransaction(
      $0.ExecuteStateTransactionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$executeStateTransaction, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Empty> publishEvent($0.PublishEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.InvokeBindingResponse> invokeBinding(
      $0.InvokeBindingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invokeBinding, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSecretResponse> getSecret(
      $0.GetSecretRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSecret, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBulkSecretResponse> getBulkSecret(
      $0.GetBulkSecretRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBulkSecret, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> registerActorTimer(
      $0.RegisterActorTimerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerActorTimer, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> unregisterActorTimer(
      $0.UnregisterActorTimerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterActorTimer, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> registerActorReminder(
      $0.RegisterActorReminderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerActorReminder, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> unregisterActorReminder(
      $0.UnregisterActorReminderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unregisterActorReminder, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.GetActorStateResponse> getActorState(
      $0.GetActorStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getActorState, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> executeActorStateTransaction(
      $0.ExecuteActorStateTransactionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$executeActorStateTransaction, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.InvokeActorResponse> invokeActor(
      $0.InvokeActorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invokeActor, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetConfigurationResponse> getConfigurationAlpha1(
      $0.GetConfigurationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConfigurationAlpha1, request,
        options: options);
  }

  $grpc.ResponseStream<$0.SubscribeConfigurationResponse>
      subscribeConfigurationAlpha1($0.SubscribeConfigurationRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribeConfigurationAlpha1, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.GetMetadataResponse> getMetadata($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMetadata, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> setMetadata($0.SetMetadataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setMetadata, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> shutdown($2.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$shutdown, request, options: options);
  }
}

abstract class DaprServiceBase extends $grpc.Service {
  $core.String get $name => 'dapr.proto.runtime.v1.Dapr';

  DaprServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InvokeServiceRequest, $1.InvokeResponse>(
        'InvokeService',
        invokeService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.InvokeServiceRequest.fromBuffer(value),
        ($1.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStateRequest, $0.GetStateResponse>(
        'GetState',
        getState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStateRequest.fromBuffer(value),
        ($0.GetStateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetBulkStateRequest, $0.GetBulkStateResponse>(
            'GetBulkState',
            getBulkState_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetBulkStateRequest.fromBuffer(value),
            ($0.GetBulkStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SaveStateRequest, $2.Empty>(
        'SaveState',
        saveState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SaveStateRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryStateRequest, $0.QueryStateResponse>(
        'QueryStateAlpha1',
        queryStateAlpha1_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryStateRequest.fromBuffer(value),
        ($0.QueryStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteStateRequest, $2.Empty>(
        'DeleteState',
        deleteState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteStateRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteBulkStateRequest, $2.Empty>(
        'DeleteBulkState',
        deleteBulkState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteBulkStateRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExecuteStateTransactionRequest, $2.Empty>(
        'ExecuteStateTransaction',
        executeStateTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ExecuteStateTransactionRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PublishEventRequest, $2.Empty>(
        'PublishEvent',
        publishEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PublishEventRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.InvokeBindingRequest, $0.InvokeBindingResponse>(
            'InvokeBinding',
            invokeBinding_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.InvokeBindingRequest.fromBuffer(value),
            ($0.InvokeBindingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSecretRequest, $0.GetSecretResponse>(
        'GetSecret',
        getSecret_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSecretRequest.fromBuffer(value),
        ($0.GetSecretResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetBulkSecretRequest, $0.GetBulkSecretResponse>(
            'GetBulkSecret',
            getBulkSecret_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetBulkSecretRequest.fromBuffer(value),
            ($0.GetBulkSecretResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterActorTimerRequest, $2.Empty>(
        'RegisterActorTimer',
        registerActorTimer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterActorTimerRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnregisterActorTimerRequest, $2.Empty>(
        'UnregisterActorTimer',
        unregisterActorTimer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UnregisterActorTimerRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterActorReminderRequest, $2.Empty>(
        'RegisterActorReminder',
        registerActorReminder_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterActorReminderRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UnregisterActorReminderRequest, $2.Empty>(
        'UnregisterActorReminder',
        unregisterActorReminder_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UnregisterActorReminderRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetActorStateRequest, $0.GetActorStateResponse>(
            'GetActorState',
            getActorState_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetActorStateRequest.fromBuffer(value),
            ($0.GetActorStateResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ExecuteActorStateTransactionRequest, $2.Empty>(
            'ExecuteActorStateTransaction',
            executeActorStateTransaction_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ExecuteActorStateTransactionRequest.fromBuffer(value),
            ($2.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.InvokeActorRequest, $0.InvokeActorResponse>(
            'InvokeActor',
            invokeActor_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.InvokeActorRequest.fromBuffer(value),
            ($0.InvokeActorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetConfigurationRequest,
            $0.GetConfigurationResponse>(
        'GetConfigurationAlpha1',
        getConfigurationAlpha1_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetConfigurationRequest.fromBuffer(value),
        ($0.GetConfigurationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubscribeConfigurationRequest,
            $0.SubscribeConfigurationResponse>(
        'SubscribeConfigurationAlpha1',
        subscribeConfigurationAlpha1_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SubscribeConfigurationRequest.fromBuffer(value),
        ($0.SubscribeConfigurationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $0.GetMetadataResponse>(
        'GetMetadata',
        getMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($0.GetMetadataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetMetadataRequest, $2.Empty>(
        'SetMetadata',
        setMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetMetadataRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.Empty>(
        'Shutdown',
        shutdown_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.InvokeResponse> invokeService_Pre($grpc.ServiceCall call,
      $async.Future<$0.InvokeServiceRequest> request) async {
    return invokeService(call, await request);
  }

  $async.Future<$0.GetStateResponse> getState_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetStateRequest> request) async {
    return getState(call, await request);
  }

  $async.Future<$0.GetBulkStateResponse> getBulkState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetBulkStateRequest> request) async {
    return getBulkState(call, await request);
  }

  $async.Future<$2.Empty> saveState_Pre($grpc.ServiceCall call,
      $async.Future<$0.SaveStateRequest> request) async {
    return saveState(call, await request);
  }

  $async.Future<$0.QueryStateResponse> queryStateAlpha1_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryStateRequest> request) async {
    return queryStateAlpha1(call, await request);
  }

  $async.Future<$2.Empty> deleteState_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteStateRequest> request) async {
    return deleteState(call, await request);
  }

  $async.Future<$2.Empty> deleteBulkState_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteBulkStateRequest> request) async {
    return deleteBulkState(call, await request);
  }

  $async.Future<$2.Empty> executeStateTransaction_Pre($grpc.ServiceCall call,
      $async.Future<$0.ExecuteStateTransactionRequest> request) async {
    return executeStateTransaction(call, await request);
  }

  $async.Future<$2.Empty> publishEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.PublishEventRequest> request) async {
    return publishEvent(call, await request);
  }

  $async.Future<$0.InvokeBindingResponse> invokeBinding_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.InvokeBindingRequest> request) async {
    return invokeBinding(call, await request);
  }

  $async.Future<$0.GetSecretResponse> getSecret_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetSecretRequest> request) async {
    return getSecret(call, await request);
  }

  $async.Future<$0.GetBulkSecretResponse> getBulkSecret_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetBulkSecretRequest> request) async {
    return getBulkSecret(call, await request);
  }

  $async.Future<$2.Empty> registerActorTimer_Pre($grpc.ServiceCall call,
      $async.Future<$0.RegisterActorTimerRequest> request) async {
    return registerActorTimer(call, await request);
  }

  $async.Future<$2.Empty> unregisterActorTimer_Pre($grpc.ServiceCall call,
      $async.Future<$0.UnregisterActorTimerRequest> request) async {
    return unregisterActorTimer(call, await request);
  }

  $async.Future<$2.Empty> registerActorReminder_Pre($grpc.ServiceCall call,
      $async.Future<$0.RegisterActorReminderRequest> request) async {
    return registerActorReminder(call, await request);
  }

  $async.Future<$2.Empty> unregisterActorReminder_Pre($grpc.ServiceCall call,
      $async.Future<$0.UnregisterActorReminderRequest> request) async {
    return unregisterActorReminder(call, await request);
  }

  $async.Future<$0.GetActorStateResponse> getActorState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetActorStateRequest> request) async {
    return getActorState(call, await request);
  }

  $async.Future<$2.Empty> executeActorStateTransaction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ExecuteActorStateTransactionRequest> request) async {
    return executeActorStateTransaction(call, await request);
  }

  $async.Future<$0.InvokeActorResponse> invokeActor_Pre($grpc.ServiceCall call,
      $async.Future<$0.InvokeActorRequest> request) async {
    return invokeActor(call, await request);
  }

  $async.Future<$0.GetConfigurationResponse> getConfigurationAlpha1_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetConfigurationRequest> request) async {
    return getConfigurationAlpha1(call, await request);
  }

  $async.Stream<$0.SubscribeConfigurationResponse>
      subscribeConfigurationAlpha1_Pre($grpc.ServiceCall call,
          $async.Future<$0.SubscribeConfigurationRequest> request) async* {
    yield* subscribeConfigurationAlpha1(call, await request);
  }

  $async.Future<$0.GetMetadataResponse> getMetadata_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return getMetadata(call, await request);
  }

  $async.Future<$2.Empty> setMetadata_Pre($grpc.ServiceCall call,
      $async.Future<$0.SetMetadataRequest> request) async {
    return setMetadata(call, await request);
  }

  $async.Future<$2.Empty> shutdown_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Empty> request) async {
    return shutdown(call, await request);
  }

  $async.Future<$1.InvokeResponse> invokeService(
      $grpc.ServiceCall call, $0.InvokeServiceRequest request);
  $async.Future<$0.GetStateResponse> getState(
      $grpc.ServiceCall call, $0.GetStateRequest request);
  $async.Future<$0.GetBulkStateResponse> getBulkState(
      $grpc.ServiceCall call, $0.GetBulkStateRequest request);
  $async.Future<$2.Empty> saveState(
      $grpc.ServiceCall call, $0.SaveStateRequest request);
  $async.Future<$0.QueryStateResponse> queryStateAlpha1(
      $grpc.ServiceCall call, $0.QueryStateRequest request);
  $async.Future<$2.Empty> deleteState(
      $grpc.ServiceCall call, $0.DeleteStateRequest request);
  $async.Future<$2.Empty> deleteBulkState(
      $grpc.ServiceCall call, $0.DeleteBulkStateRequest request);
  $async.Future<$2.Empty> executeStateTransaction(
      $grpc.ServiceCall call, $0.ExecuteStateTransactionRequest request);
  $async.Future<$2.Empty> publishEvent(
      $grpc.ServiceCall call, $0.PublishEventRequest request);
  $async.Future<$0.InvokeBindingResponse> invokeBinding(
      $grpc.ServiceCall call, $0.InvokeBindingRequest request);
  $async.Future<$0.GetSecretResponse> getSecret(
      $grpc.ServiceCall call, $0.GetSecretRequest request);
  $async.Future<$0.GetBulkSecretResponse> getBulkSecret(
      $grpc.ServiceCall call, $0.GetBulkSecretRequest request);
  $async.Future<$2.Empty> registerActorTimer(
      $grpc.ServiceCall call, $0.RegisterActorTimerRequest request);
  $async.Future<$2.Empty> unregisterActorTimer(
      $grpc.ServiceCall call, $0.UnregisterActorTimerRequest request);
  $async.Future<$2.Empty> registerActorReminder(
      $grpc.ServiceCall call, $0.RegisterActorReminderRequest request);
  $async.Future<$2.Empty> unregisterActorReminder(
      $grpc.ServiceCall call, $0.UnregisterActorReminderRequest request);
  $async.Future<$0.GetActorStateResponse> getActorState(
      $grpc.ServiceCall call, $0.GetActorStateRequest request);
  $async.Future<$2.Empty> executeActorStateTransaction(
      $grpc.ServiceCall call, $0.ExecuteActorStateTransactionRequest request);
  $async.Future<$0.InvokeActorResponse> invokeActor(
      $grpc.ServiceCall call, $0.InvokeActorRequest request);
  $async.Future<$0.GetConfigurationResponse> getConfigurationAlpha1(
      $grpc.ServiceCall call, $0.GetConfigurationRequest request);
  $async.Stream<$0.SubscribeConfigurationResponse> subscribeConfigurationAlpha1(
      $grpc.ServiceCall call, $0.SubscribeConfigurationRequest request);
  $async.Future<$0.GetMetadataResponse> getMetadata(
      $grpc.ServiceCall call, $2.Empty request);
  $async.Future<$2.Empty> setMetadata(
      $grpc.ServiceCall call, $0.SetMetadataRequest request);
  $async.Future<$2.Empty> shutdown($grpc.ServiceCall call, $2.Empty request);
}
