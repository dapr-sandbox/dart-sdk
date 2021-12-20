///
//  Generated code. Do not modify.
//  source: dapr/proto/runtime/v1/appcallback.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../common/v1/common.pb.dart' as $0;

import 'appcallback.pbenum.dart';

export 'appcallback.pbenum.dart';

class TopicEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TopicEventRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'source')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'specVersion')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataContentType')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'topic')
    ..a<$core.List<$core.int>>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pubsubName')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'path')
    ..hasRequiredFields = false;

  TopicEventRequest._() : super();
  factory TopicEventRequest({
    $core.String? id,
    $core.String? source,
    $core.String? type,
    $core.String? specVersion,
    $core.String? dataContentType,
    $core.String? topic,
    $core.List<$core.int>? data,
    $core.String? pubsubName,
    $core.String? path,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (source != null) {
      _result.source = source;
    }
    if (type != null) {
      _result.type = type;
    }
    if (specVersion != null) {
      _result.specVersion = specVersion;
    }
    if (dataContentType != null) {
      _result.dataContentType = dataContentType;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (data != null) {
      _result.data = data;
    }
    if (pubsubName != null) {
      _result.pubsubName = pubsubName;
    }
    if (path != null) {
      _result.path = path;
    }
    return _result;
  }
  factory TopicEventRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicEventRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicEventRequest clone() => TopicEventRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicEventRequest copyWith(void Function(TopicEventRequest) updates) =>
      super.copyWith((message) => updates(message as TopicEventRequest))
          as TopicEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TopicEventRequest create() => TopicEventRequest._();
  TopicEventRequest createEmptyInstance() => create();
  static $pb.PbList<TopicEventRequest> createRepeated() =>
      $pb.PbList<TopicEventRequest>();
  @$core.pragma('dart2js:noInline')
  static TopicEventRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicEventRequest>(create);
  static TopicEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get source => $_getSZ(1);
  @$pb.TagNumber(2)
  set source($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get specVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set specVersion($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSpecVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpecVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get dataContentType => $_getSZ(4);
  @$pb.TagNumber(5)
  set dataContentType($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDataContentType() => $_has(4);
  @$pb.TagNumber(5)
  void clearDataContentType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get topic => $_getSZ(5);
  @$pb.TagNumber(6)
  set topic($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTopic() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopic() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get data => $_getN(6);
  @$pb.TagNumber(7)
  set data($core.List<$core.int> v) {
    $_setBytes(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasData() => $_has(6);
  @$pb.TagNumber(7)
  void clearData() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get pubsubName => $_getSZ(7);
  @$pb.TagNumber(8)
  set pubsubName($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPubsubName() => $_has(7);
  @$pb.TagNumber(8)
  void clearPubsubName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get path => $_getSZ(8);
  @$pb.TagNumber(9)
  set path($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPath() => $_has(8);
  @$pb.TagNumber(9)
  void clearPath() => clearField(9);
}

class TopicEventResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TopicEventResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..e<TopicEventResponse_TopicEventResponseStatus>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'status',
        $pb.PbFieldType.OE,
        defaultOrMaker: TopicEventResponse_TopicEventResponseStatus.SUCCESS,
        valueOf: TopicEventResponse_TopicEventResponseStatus.valueOf,
        enumValues: TopicEventResponse_TopicEventResponseStatus.values)
    ..hasRequiredFields = false;

  TopicEventResponse._() : super();
  factory TopicEventResponse({
    TopicEventResponse_TopicEventResponseStatus? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory TopicEventResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicEventResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicEventResponse clone() => TopicEventResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicEventResponse copyWith(void Function(TopicEventResponse) updates) =>
      super.copyWith((message) => updates(message as TopicEventResponse))
          as TopicEventResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TopicEventResponse create() => TopicEventResponse._();
  TopicEventResponse createEmptyInstance() => create();
  static $pb.PbList<TopicEventResponse> createRepeated() =>
      $pb.PbList<TopicEventResponse>();
  @$core.pragma('dart2js:noInline')
  static TopicEventResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicEventResponse>(create);
  static TopicEventResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TopicEventResponse_TopicEventResponseStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(TopicEventResponse_TopicEventResponseStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class BindingEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BindingEventRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'BindingEventRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  BindingEventRequest._() : super();
  factory BindingEventRequest({
    $core.String? name,
    $core.List<$core.int>? data,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (data != null) {
      _result.data = data;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory BindingEventRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BindingEventRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BindingEventRequest clone() => BindingEventRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BindingEventRequest copyWith(void Function(BindingEventRequest) updates) =>
      super.copyWith((message) => updates(message as BindingEventRequest))
          as BindingEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BindingEventRequest create() => BindingEventRequest._();
  BindingEventRequest createEmptyInstance() => create();
  static $pb.PbList<BindingEventRequest> createRepeated() =>
      $pb.PbList<BindingEventRequest>();
  @$core.pragma('dart2js:noInline')
  static BindingEventRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindingEventRequest>(create);
  static BindingEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class BindingEventResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BindingEventResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'storeName')
    ..pc<$0.StateItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'states',
        $pb.PbFieldType.PM,
        subBuilder: $0.StateItem.create)
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'to')
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..e<BindingEventResponse_BindingEventConcurrency>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'concurrency',
        $pb.PbFieldType.OE,
        defaultOrMaker: BindingEventResponse_BindingEventConcurrency.SEQUENTIAL,
        valueOf: BindingEventResponse_BindingEventConcurrency.valueOf,
        enumValues: BindingEventResponse_BindingEventConcurrency.values)
    ..hasRequiredFields = false;

  BindingEventResponse._() : super();
  factory BindingEventResponse({
    $core.String? storeName,
    $core.Iterable<$0.StateItem>? states,
    $core.Iterable<$core.String>? to,
    $core.List<$core.int>? data,
    BindingEventResponse_BindingEventConcurrency? concurrency,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (states != null) {
      _result.states.addAll(states);
    }
    if (to != null) {
      _result.to.addAll(to);
    }
    if (data != null) {
      _result.data = data;
    }
    if (concurrency != null) {
      _result.concurrency = concurrency;
    }
    return _result;
  }
  factory BindingEventResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BindingEventResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BindingEventResponse clone() =>
      BindingEventResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BindingEventResponse copyWith(void Function(BindingEventResponse) updates) =>
      super.copyWith((message) => updates(message as BindingEventResponse))
          as BindingEventResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BindingEventResponse create() => BindingEventResponse._();
  BindingEventResponse createEmptyInstance() => create();
  static $pb.PbList<BindingEventResponse> createRepeated() =>
      $pb.PbList<BindingEventResponse>();
  @$core.pragma('dart2js:noInline')
  static BindingEventResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindingEventResponse>(create);
  static BindingEventResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStoreName() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.StateItem> get states => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get to => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);

  @$pb.TagNumber(5)
  BindingEventResponse_BindingEventConcurrency get concurrency => $_getN(4);
  @$pb.TagNumber(5)
  set concurrency(BindingEventResponse_BindingEventConcurrency v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasConcurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearConcurrency() => clearField(5);
}

class ListTopicSubscriptionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListTopicSubscriptionsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..pc<TopicSubscription>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subscriptions',
        $pb.PbFieldType.PM,
        subBuilder: TopicSubscription.create)
    ..hasRequiredFields = false;

  ListTopicSubscriptionsResponse._() : super();
  factory ListTopicSubscriptionsResponse({
    $core.Iterable<TopicSubscription>? subscriptions,
  }) {
    final _result = create();
    if (subscriptions != null) {
      _result.subscriptions.addAll(subscriptions);
    }
    return _result;
  }
  factory ListTopicSubscriptionsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListTopicSubscriptionsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListTopicSubscriptionsResponse clone() =>
      ListTopicSubscriptionsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListTopicSubscriptionsResponse copyWith(
          void Function(ListTopicSubscriptionsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListTopicSubscriptionsResponse))
          as ListTopicSubscriptionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTopicSubscriptionsResponse create() =>
      ListTopicSubscriptionsResponse._();
  ListTopicSubscriptionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListTopicSubscriptionsResponse> createRepeated() =>
      $pb.PbList<ListTopicSubscriptionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTopicSubscriptionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListTopicSubscriptionsResponse>(create);
  static ListTopicSubscriptionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TopicSubscription> get subscriptions => $_getList(0);
}

class TopicSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TopicSubscription',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pubsubName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'topic')
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'TopicSubscription.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..aOM<TopicRoutes>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'routes',
        subBuilder: TopicRoutes.create)
    ..hasRequiredFields = false;

  TopicSubscription._() : super();
  factory TopicSubscription({
    $core.String? pubsubName,
    $core.String? topic,
    $core.Map<$core.String, $core.String>? metadata,
    TopicRoutes? routes,
  }) {
    final _result = create();
    if (pubsubName != null) {
      _result.pubsubName = pubsubName;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    if (routes != null) {
      _result.routes = routes;
    }
    return _result;
  }
  factory TopicSubscription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicSubscription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicSubscription clone() => TopicSubscription()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicSubscription copyWith(void Function(TopicSubscription) updates) =>
      super.copyWith((message) => updates(message as TopicSubscription))
          as TopicSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TopicSubscription create() => TopicSubscription._();
  TopicSubscription createEmptyInstance() => create();
  static $pb.PbList<TopicSubscription> createRepeated() =>
      $pb.PbList<TopicSubscription>();
  @$core.pragma('dart2js:noInline')
  static TopicSubscription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicSubscription>(create);
  static TopicSubscription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubsubName => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubsubName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPubsubName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubsubName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get topic => $_getSZ(1);
  @$pb.TagNumber(2)
  set topic($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);

  @$pb.TagNumber(5)
  TopicRoutes get routes => $_getN(3);
  @$pb.TagNumber(5)
  set routes(TopicRoutes v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRoutes() => $_has(3);
  @$pb.TagNumber(5)
  void clearRoutes() => clearField(5);
  @$pb.TagNumber(5)
  TopicRoutes ensureRoutes() => $_ensure(3);
}

class TopicRoutes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TopicRoutes',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..pc<TopicRule>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'rules',
        $pb.PbFieldType.PM,
        subBuilder: TopicRule.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'default')
    ..hasRequiredFields = false;

  TopicRoutes._() : super();
  factory TopicRoutes({
    $core.Iterable<TopicRule>? rules,
    $core.String? default_2,
  }) {
    final _result = create();
    if (rules != null) {
      _result.rules.addAll(rules);
    }
    if (default_2 != null) {
      _result.default_2 = default_2;
    }
    return _result;
  }
  factory TopicRoutes.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicRoutes.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicRoutes clone() => TopicRoutes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicRoutes copyWith(void Function(TopicRoutes) updates) =>
      super.copyWith((message) => updates(message as TopicRoutes))
          as TopicRoutes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TopicRoutes create() => TopicRoutes._();
  TopicRoutes createEmptyInstance() => create();
  static $pb.PbList<TopicRoutes> createRepeated() => $pb.PbList<TopicRoutes>();
  @$core.pragma('dart2js:noInline')
  static TopicRoutes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicRoutes>(create);
  static TopicRoutes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TopicRule> get rules => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get default_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set default_2($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDefault_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefault_2() => clearField(2);
}

class TopicRule extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TopicRule',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'match')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'path')
    ..hasRequiredFields = false;

  TopicRule._() : super();
  factory TopicRule({
    $core.String? match,
    $core.String? path,
  }) {
    final _result = create();
    if (match != null) {
      _result.match = match;
    }
    if (path != null) {
      _result.path = path;
    }
    return _result;
  }
  factory TopicRule.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicRule.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicRule clone() => TopicRule()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicRule copyWith(void Function(TopicRule) updates) =>
      super.copyWith((message) => updates(message as TopicRule))
          as TopicRule; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TopicRule create() => TopicRule._();
  TopicRule createEmptyInstance() => create();
  static $pb.PbList<TopicRule> createRepeated() => $pb.PbList<TopicRule>();
  @$core.pragma('dart2js:noInline')
  static TopicRule getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopicRule>(create);
  static TopicRule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get match => $_getSZ(0);
  @$pb.TagNumber(1)
  set match($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMatch() => $_has(0);
  @$pb.TagNumber(1)
  void clearMatch() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => clearField(2);
}

class ListInputBindingsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListInputBindingsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bindings')
    ..hasRequiredFields = false;

  ListInputBindingsResponse._() : super();
  factory ListInputBindingsResponse({
    $core.Iterable<$core.String>? bindings,
  }) {
    final _result = create();
    if (bindings != null) {
      _result.bindings.addAll(bindings);
    }
    return _result;
  }
  factory ListInputBindingsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListInputBindingsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListInputBindingsResponse clone() =>
      ListInputBindingsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListInputBindingsResponse copyWith(
          void Function(ListInputBindingsResponse) updates) =>
      super.copyWith((message) => updates(message as ListInputBindingsResponse))
          as ListInputBindingsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInputBindingsResponse create() => ListInputBindingsResponse._();
  ListInputBindingsResponse createEmptyInstance() => create();
  static $pb.PbList<ListInputBindingsResponse> createRepeated() =>
      $pb.PbList<ListInputBindingsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInputBindingsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListInputBindingsResponse>(create);
  static ListInputBindingsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get bindings => $_getList(0);
}
