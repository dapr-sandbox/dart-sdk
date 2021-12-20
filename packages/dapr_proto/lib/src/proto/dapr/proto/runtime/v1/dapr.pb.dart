///
//  Generated code. Do not modify.
//  source: dapr/proto/runtime/v1/dapr.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../common/v1/common.pb.dart' as $1;
import '../../../../google/protobuf/any.pb.dart' as $3;

import '../../common/v1/common.pbenum.dart' as $1;

class InvokeServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvokeServiceRequest',
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
    ..aOM<$1.InvokeRequest>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'message',
        subBuilder: $1.InvokeRequest.create)
    ..hasRequiredFields = false;

  InvokeServiceRequest._() : super();
  factory InvokeServiceRequest({
    $core.String? id,
    $1.InvokeRequest? message,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory InvokeServiceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeServiceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeServiceRequest clone() =>
      InvokeServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeServiceRequest copyWith(void Function(InvokeServiceRequest) updates) =>
      super.copyWith((message) => updates(message as InvokeServiceRequest))
          as InvokeServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeServiceRequest create() => InvokeServiceRequest._();
  InvokeServiceRequest createEmptyInstance() => create();
  static $pb.PbList<InvokeServiceRequest> createRepeated() =>
      $pb.PbList<InvokeServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static InvokeServiceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeServiceRequest>(create);
  static InvokeServiceRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $1.InvokeRequest get message => $_getN(1);
  @$pb.TagNumber(3)
  set message($1.InvokeRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  $1.InvokeRequest ensureMessage() => $_ensure(1);
}

class GetStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetStateRequest',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..e<$1.StateOptions_StateConsistency>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consistency',
        $pb.PbFieldType.OE,
        defaultOrMaker:
            $1.StateOptions_StateConsistency.CONSISTENCY_UNSPECIFIED,
        valueOf: $1.StateOptions_StateConsistency.valueOf,
        enumValues: $1.StateOptions_StateConsistency.values)
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'GetStateRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetStateRequest._() : super();
  factory GetStateRequest({
    $core.String? storeName,
    $core.String? key,
    $1.StateOptions_StateConsistency? consistency,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (key != null) {
      _result.key = key;
    }
    if (consistency != null) {
      _result.consistency = consistency;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory GetStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetStateRequest clone() => GetStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetStateRequest copyWith(void Function(GetStateRequest) updates) =>
      super.copyWith((message) => updates(message as GetStateRequest))
          as GetStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStateRequest create() => GetStateRequest._();
  GetStateRequest createEmptyInstance() => create();
  static $pb.PbList<GetStateRequest> createRepeated() =>
      $pb.PbList<GetStateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetStateRequest>(create);
  static GetStateRequest? _defaultInstance;

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
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $1.StateOptions_StateConsistency get consistency => $_getN(2);
  @$pb.TagNumber(3)
  set consistency($1.StateOptions_StateConsistency v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(3);
}

class GetBulkStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBulkStateRequest',
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
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'keys')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parallelism',
        $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'GetBulkStateRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetBulkStateRequest._() : super();
  factory GetBulkStateRequest({
    $core.String? storeName,
    $core.Iterable<$core.String>? keys,
    $core.int? parallelism,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    if (parallelism != null) {
      _result.parallelism = parallelism;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory GetBulkStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBulkStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBulkStateRequest clone() => GetBulkStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBulkStateRequest copyWith(void Function(GetBulkStateRequest) updates) =>
      super.copyWith((message) => updates(message as GetBulkStateRequest))
          as GetBulkStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBulkStateRequest create() => GetBulkStateRequest._();
  GetBulkStateRequest createEmptyInstance() => create();
  static $pb.PbList<GetBulkStateRequest> createRepeated() =>
      $pb.PbList<GetBulkStateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBulkStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBulkStateRequest>(create);
  static GetBulkStateRequest? _defaultInstance;

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
  $core.List<$core.String> get keys => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get parallelism => $_getIZ(2);
  @$pb.TagNumber(3)
  set parallelism($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasParallelism() => $_has(2);
  @$pb.TagNumber(3)
  void clearParallelism() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(3);
}

class GetBulkStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBulkStateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..pc<BulkStateItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: BulkStateItem.create)
    ..hasRequiredFields = false;

  GetBulkStateResponse._() : super();
  factory GetBulkStateResponse({
    $core.Iterable<BulkStateItem>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GetBulkStateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBulkStateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBulkStateResponse clone() =>
      GetBulkStateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBulkStateResponse copyWith(void Function(GetBulkStateResponse) updates) =>
      super.copyWith((message) => updates(message as GetBulkStateResponse))
          as GetBulkStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBulkStateResponse create() => GetBulkStateResponse._();
  GetBulkStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetBulkStateResponse> createRepeated() =>
      $pb.PbList<GetBulkStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBulkStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBulkStateResponse>(create);
  static GetBulkStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BulkStateItem> get items => $_getList(0);
}

class BulkStateItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BulkStateItem',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'etag')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error')
    ..m<$core.String, $core.String>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'BulkStateItem.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  BulkStateItem._() : super();
  factory BulkStateItem({
    $core.String? key,
    $core.List<$core.int>? data,
    $core.String? etag,
    $core.String? error,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (data != null) {
      _result.data = data;
    }
    if (etag != null) {
      _result.etag = etag;
    }
    if (error != null) {
      _result.error = error;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory BulkStateItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BulkStateItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BulkStateItem clone() => BulkStateItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BulkStateItem copyWith(void Function(BulkStateItem) updates) =>
      super.copyWith((message) => updates(message as BulkStateItem))
          as BulkStateItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BulkStateItem create() => BulkStateItem._();
  BulkStateItem createEmptyInstance() => create();
  static $pb.PbList<BulkStateItem> createRepeated() =>
      $pb.PbList<BulkStateItem>();
  @$core.pragma('dart2js:noInline')
  static BulkStateItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BulkStateItem>(create);
  static BulkStateItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

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
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(3)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(3)
  void clearEtag() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(4)
  set error($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(4);
}

class GetStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetStateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'etag')
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'GetStateResponse.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetStateResponse._() : super();
  factory GetStateResponse({
    $core.List<$core.int>? data,
    $core.String? etag,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (etag != null) {
      _result.etag = etag;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory GetStateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetStateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetStateResponse clone() => GetStateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetStateResponse copyWith(void Function(GetStateResponse) updates) =>
      super.copyWith((message) => updates(message as GetStateResponse))
          as GetStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStateResponse create() => GetStateResponse._();
  GetStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetStateResponse> createRepeated() =>
      $pb.PbList<GetStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetStateResponse>(create);
  static GetStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get etag => $_getSZ(1);
  @$pb.TagNumber(2)
  set etag($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEtag() => $_has(1);
  @$pb.TagNumber(2)
  void clearEtag() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class DeleteStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteStateRequest',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..aOM<$1.Etag>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'etag',
        subBuilder: $1.Etag.create)
    ..aOM<$1.StateOptions>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'options',
        subBuilder: $1.StateOptions.create)
    ..m<$core.String, $core.String>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'DeleteStateRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  DeleteStateRequest._() : super();
  factory DeleteStateRequest({
    $core.String? storeName,
    $core.String? key,
    $1.Etag? etag,
    $1.StateOptions? options,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (key != null) {
      _result.key = key;
    }
    if (etag != null) {
      _result.etag = etag;
    }
    if (options != null) {
      _result.options = options;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory DeleteStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteStateRequest clone() => DeleteStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteStateRequest copyWith(void Function(DeleteStateRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteStateRequest))
          as DeleteStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteStateRequest create() => DeleteStateRequest._();
  DeleteStateRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStateRequest> createRepeated() =>
      $pb.PbList<DeleteStateRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteStateRequest>(create);
  static DeleteStateRequest? _defaultInstance;

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
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $1.Etag get etag => $_getN(2);
  @$pb.TagNumber(3)
  set etag($1.Etag v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(3)
  void clearEtag() => clearField(3);
  @$pb.TagNumber(3)
  $1.Etag ensureEtag() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.StateOptions get options => $_getN(3);
  @$pb.TagNumber(4)
  set options($1.StateOptions v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptions() => clearField(4);
  @$pb.TagNumber(4)
  $1.StateOptions ensureOptions() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(4);
}

class DeleteBulkStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteBulkStateRequest',
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
    ..pc<$1.StateItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'states',
        $pb.PbFieldType.PM,
        subBuilder: $1.StateItem.create)
    ..hasRequiredFields = false;

  DeleteBulkStateRequest._() : super();
  factory DeleteBulkStateRequest({
    $core.String? storeName,
    $core.Iterable<$1.StateItem>? states,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (states != null) {
      _result.states.addAll(states);
    }
    return _result;
  }
  factory DeleteBulkStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteBulkStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteBulkStateRequest clone() =>
      DeleteBulkStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteBulkStateRequest copyWith(
          void Function(DeleteBulkStateRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteBulkStateRequest))
          as DeleteBulkStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteBulkStateRequest create() => DeleteBulkStateRequest._();
  DeleteBulkStateRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteBulkStateRequest> createRepeated() =>
      $pb.PbList<DeleteBulkStateRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteBulkStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteBulkStateRequest>(create);
  static DeleteBulkStateRequest? _defaultInstance;

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
  $core.List<$1.StateItem> get states => $_getList(1);
}

class SaveStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SaveStateRequest',
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
    ..pc<$1.StateItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'states',
        $pb.PbFieldType.PM,
        subBuilder: $1.StateItem.create)
    ..hasRequiredFields = false;

  SaveStateRequest._() : super();
  factory SaveStateRequest({
    $core.String? storeName,
    $core.Iterable<$1.StateItem>? states,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (states != null) {
      _result.states.addAll(states);
    }
    return _result;
  }
  factory SaveStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaveStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SaveStateRequest clone() => SaveStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SaveStateRequest copyWith(void Function(SaveStateRequest) updates) =>
      super.copyWith((message) => updates(message as SaveStateRequest))
          as SaveStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveStateRequest create() => SaveStateRequest._();
  SaveStateRequest createEmptyInstance() => create();
  static $pb.PbList<SaveStateRequest> createRepeated() =>
      $pb.PbList<SaveStateRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SaveStateRequest>(create);
  static SaveStateRequest? _defaultInstance;

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
  $core.List<$1.StateItem> get states => $_getList(1);
}

class QueryStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'QueryStateRequest',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'query')
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'QueryStateRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  QueryStateRequest._() : super();
  factory QueryStateRequest({
    $core.String? storeName,
    $core.String? query,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (query != null) {
      _result.query = query;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory QueryStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueryStateRequest clone() => QueryStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueryStateRequest copyWith(void Function(QueryStateRequest) updates) =>
      super.copyWith((message) => updates(message as QueryStateRequest))
          as QueryStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryStateRequest create() => QueryStateRequest._();
  QueryStateRequest createEmptyInstance() => create();
  static $pb.PbList<QueryStateRequest> createRepeated() =>
      $pb.PbList<QueryStateRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryStateRequest>(create);
  static QueryStateRequest? _defaultInstance;

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
  $core.String get query => $_getSZ(1);
  @$pb.TagNumber(2)
  set query($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuery() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class QueryStateItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'QueryStateItem',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'etag')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error')
    ..hasRequiredFields = false;

  QueryStateItem._() : super();
  factory QueryStateItem({
    $core.String? key,
    $core.List<$core.int>? data,
    $core.String? etag,
    $core.String? error,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (data != null) {
      _result.data = data;
    }
    if (etag != null) {
      _result.etag = etag;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory QueryStateItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryStateItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueryStateItem clone() => QueryStateItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueryStateItem copyWith(void Function(QueryStateItem) updates) =>
      super.copyWith((message) => updates(message as QueryStateItem))
          as QueryStateItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryStateItem create() => QueryStateItem._();
  QueryStateItem createEmptyInstance() => create();
  static $pb.PbList<QueryStateItem> createRepeated() =>
      $pb.PbList<QueryStateItem>();
  @$core.pragma('dart2js:noInline')
  static QueryStateItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryStateItem>(create);
  static QueryStateItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

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
  $core.String get etag => $_getSZ(2);
  @$pb.TagNumber(3)
  set etag($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(3)
  void clearEtag() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(4)
  set error($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);
}

class QueryStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'QueryStateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..pc<QueryStateItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'results',
        $pb.PbFieldType.PM,
        subBuilder: QueryStateItem.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'token')
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'QueryStateResponse.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  QueryStateResponse._() : super();
  factory QueryStateResponse({
    $core.Iterable<QueryStateItem>? results,
    $core.String? token,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    if (token != null) {
      _result.token = token;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory QueryStateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryStateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueryStateResponse clone() => QueryStateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueryStateResponse copyWith(void Function(QueryStateResponse) updates) =>
      super.copyWith((message) => updates(message as QueryStateResponse))
          as QueryStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryStateResponse create() => QueryStateResponse._();
  QueryStateResponse createEmptyInstance() => create();
  static $pb.PbList<QueryStateResponse> createRepeated() =>
      $pb.PbList<QueryStateResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryStateResponse>(create);
  static QueryStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QueryStateItem> get results => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class PublishEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PublishEventRequest',
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
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dataContentType')
    ..m<$core.String, $core.String>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'PublishEventRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  PublishEventRequest._() : super();
  factory PublishEventRequest({
    $core.String? pubsubName,
    $core.String? topic,
    $core.List<$core.int>? data,
    $core.String? dataContentType,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (pubsubName != null) {
      _result.pubsubName = pubsubName;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (data != null) {
      _result.data = data;
    }
    if (dataContentType != null) {
      _result.dataContentType = dataContentType;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory PublishEventRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PublishEventRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PublishEventRequest clone() => PublishEventRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PublishEventRequest copyWith(void Function(PublishEventRequest) updates) =>
      super.copyWith((message) => updates(message as PublishEventRequest))
          as PublishEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishEventRequest create() => PublishEventRequest._();
  PublishEventRequest createEmptyInstance() => create();
  static $pb.PbList<PublishEventRequest> createRepeated() =>
      $pb.PbList<PublishEventRequest>();
  @$core.pragma('dart2js:noInline')
  static PublishEventRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublishEventRequest>(create);
  static PublishEventRequest? _defaultInstance;

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
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get dataContentType => $_getSZ(3);
  @$pb.TagNumber(4)
  set dataContentType($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDataContentType() => $_has(3);
  @$pb.TagNumber(4)
  void clearDataContentType() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(4);
}

class InvokeBindingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvokeBindingRequest',
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
        entryClassName: 'InvokeBindingRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operation')
    ..hasRequiredFields = false;

  InvokeBindingRequest._() : super();
  factory InvokeBindingRequest({
    $core.String? name,
    $core.List<$core.int>? data,
    $core.Map<$core.String, $core.String>? metadata,
    $core.String? operation,
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
    if (operation != null) {
      _result.operation = operation;
    }
    return _result;
  }
  factory InvokeBindingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeBindingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeBindingRequest clone() =>
      InvokeBindingRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeBindingRequest copyWith(void Function(InvokeBindingRequest) updates) =>
      super.copyWith((message) => updates(message as InvokeBindingRequest))
          as InvokeBindingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeBindingRequest create() => InvokeBindingRequest._();
  InvokeBindingRequest createEmptyInstance() => create();
  static $pb.PbList<InvokeBindingRequest> createRepeated() =>
      $pb.PbList<InvokeBindingRequest>();
  @$core.pragma('dart2js:noInline')
  static InvokeBindingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeBindingRequest>(create);
  static InvokeBindingRequest? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get operation => $_getSZ(3);
  @$pb.TagNumber(4)
  set operation($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOperation() => $_has(3);
  @$pb.TagNumber(4)
  void clearOperation() => clearField(4);
}

class InvokeBindingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvokeBindingResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..m<$core.String, $core.String>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'InvokeBindingResponse.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  InvokeBindingResponse._() : super();
  factory InvokeBindingResponse({
    $core.List<$core.int>? data,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory InvokeBindingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeBindingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeBindingResponse clone() =>
      InvokeBindingResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeBindingResponse copyWith(
          void Function(InvokeBindingResponse) updates) =>
      super.copyWith((message) => updates(message as InvokeBindingResponse))
          as InvokeBindingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeBindingResponse create() => InvokeBindingResponse._();
  InvokeBindingResponse createEmptyInstance() => create();
  static $pb.PbList<InvokeBindingResponse> createRepeated() =>
      $pb.PbList<InvokeBindingResponse>();
  @$core.pragma('dart2js:noInline')
  static InvokeBindingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeBindingResponse>(create);
  static InvokeBindingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(1);
}

class GetSecretRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSecretRequest',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'GetSecretRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetSecretRequest._() : super();
  factory GetSecretRequest({
    $core.String? storeName,
    $core.String? key,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (key != null) {
      _result.key = key;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory GetSecretRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSecretRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSecretRequest clone() => GetSecretRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSecretRequest copyWith(void Function(GetSecretRequest) updates) =>
      super.copyWith((message) => updates(message as GetSecretRequest))
          as GetSecretRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSecretRequest create() => GetSecretRequest._();
  GetSecretRequest createEmptyInstance() => create();
  static $pb.PbList<GetSecretRequest> createRepeated() =>
      $pb.PbList<GetSecretRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSecretRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSecretRequest>(create);
  static GetSecretRequest? _defaultInstance;

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
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class GetSecretResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSecretResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        entryClassName: 'GetSecretResponse.DataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetSecretResponse._() : super();
  factory GetSecretResponse({
    $core.Map<$core.String, $core.String>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory GetSecretResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSecretResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSecretResponse clone() => GetSecretResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSecretResponse copyWith(void Function(GetSecretResponse) updates) =>
      super.copyWith((message) => updates(message as GetSecretResponse))
          as GetSecretResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSecretResponse create() => GetSecretResponse._();
  GetSecretResponse createEmptyInstance() => create();
  static $pb.PbList<GetSecretResponse> createRepeated() =>
      $pb.PbList<GetSecretResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSecretResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSecretResponse>(create);
  static GetSecretResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get data => $_getMap(0);
}

class GetBulkSecretRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBulkSecretRequest',
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
    ..m<$core.String, $core.String>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'GetBulkSecretRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetBulkSecretRequest._() : super();
  factory GetBulkSecretRequest({
    $core.String? storeName,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory GetBulkSecretRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBulkSecretRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBulkSecretRequest clone() =>
      GetBulkSecretRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBulkSecretRequest copyWith(void Function(GetBulkSecretRequest) updates) =>
      super.copyWith((message) => updates(message as GetBulkSecretRequest))
          as GetBulkSecretRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBulkSecretRequest create() => GetBulkSecretRequest._();
  GetBulkSecretRequest createEmptyInstance() => create();
  static $pb.PbList<GetBulkSecretRequest> createRepeated() =>
      $pb.PbList<GetBulkSecretRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBulkSecretRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBulkSecretRequest>(create);
  static GetBulkSecretRequest? _defaultInstance;

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
  $core.Map<$core.String, $core.String> get metadata => $_getMap(1);
}

class SecretResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SecretResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'secrets',
        entryClassName: 'SecretResponse.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  SecretResponse._() : super();
  factory SecretResponse({
    $core.Map<$core.String, $core.String>? secrets,
  }) {
    final _result = create();
    if (secrets != null) {
      _result.secrets.addAll(secrets);
    }
    return _result;
  }
  factory SecretResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecretResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SecretResponse clone() => SecretResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SecretResponse copyWith(void Function(SecretResponse) updates) =>
      super.copyWith((message) => updates(message as SecretResponse))
          as SecretResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SecretResponse create() => SecretResponse._();
  SecretResponse createEmptyInstance() => create();
  static $pb.PbList<SecretResponse> createRepeated() =>
      $pb.PbList<SecretResponse>();
  @$core.pragma('dart2js:noInline')
  static SecretResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecretResponse>(create);
  static SecretResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get secrets => $_getMap(0);
}

class GetBulkSecretResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetBulkSecretResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..m<$core.String, SecretResponse>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        entryClassName: 'GetBulkSecretResponse.DataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SecretResponse.create,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetBulkSecretResponse._() : super();
  factory GetBulkSecretResponse({
    $core.Map<$core.String, SecretResponse>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory GetBulkSecretResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBulkSecretResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBulkSecretResponse clone() =>
      GetBulkSecretResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBulkSecretResponse copyWith(
          void Function(GetBulkSecretResponse) updates) =>
      super.copyWith((message) => updates(message as GetBulkSecretResponse))
          as GetBulkSecretResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBulkSecretResponse create() => GetBulkSecretResponse._();
  GetBulkSecretResponse createEmptyInstance() => create();
  static $pb.PbList<GetBulkSecretResponse> createRepeated() =>
      $pb.PbList<GetBulkSecretResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBulkSecretResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBulkSecretResponse>(create);
  static GetBulkSecretResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, SecretResponse> get data => $_getMap(0);
}

class TransactionalStateOperation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionalStateOperation',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operationType',
        protoName: 'operationType')
    ..aOM<$1.StateItem>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'request',
        subBuilder: $1.StateItem.create)
    ..hasRequiredFields = false;

  TransactionalStateOperation._() : super();
  factory TransactionalStateOperation({
    $core.String? operationType,
    $1.StateItem? request,
  }) {
    final _result = create();
    if (operationType != null) {
      _result.operationType = operationType;
    }
    if (request != null) {
      _result.request = request;
    }
    return _result;
  }
  factory TransactionalStateOperation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionalStateOperation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionalStateOperation clone() =>
      TransactionalStateOperation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionalStateOperation copyWith(
          void Function(TransactionalStateOperation) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionalStateOperation))
          as TransactionalStateOperation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionalStateOperation create() =>
      TransactionalStateOperation._();
  TransactionalStateOperation createEmptyInstance() => create();
  static $pb.PbList<TransactionalStateOperation> createRepeated() =>
      $pb.PbList<TransactionalStateOperation>();
  @$core.pragma('dart2js:noInline')
  static TransactionalStateOperation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionalStateOperation>(create);
  static TransactionalStateOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operationType => $_getSZ(0);
  @$pb.TagNumber(1)
  set operationType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOperationType() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationType() => clearField(1);

  @$pb.TagNumber(2)
  $1.StateItem get request => $_getN(1);
  @$pb.TagNumber(2)
  set request($1.StateItem v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  $1.StateItem ensureRequest() => $_ensure(1);
}

class ExecuteStateTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ExecuteStateTransactionRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'storeName',
        protoName: 'storeName')
    ..pc<TransactionalStateOperation>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operations',
        $pb.PbFieldType.PM,
        subBuilder: TransactionalStateOperation.create)
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'ExecuteStateTransactionRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  ExecuteStateTransactionRequest._() : super();
  factory ExecuteStateTransactionRequest({
    $core.String? storeName,
    $core.Iterable<TransactionalStateOperation>? operations,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (operations != null) {
      _result.operations.addAll(operations);
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory ExecuteStateTransactionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecuteStateTransactionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExecuteStateTransactionRequest clone() =>
      ExecuteStateTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExecuteStateTransactionRequest copyWith(
          void Function(ExecuteStateTransactionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ExecuteStateTransactionRequest))
          as ExecuteStateTransactionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecuteStateTransactionRequest create() =>
      ExecuteStateTransactionRequest._();
  ExecuteStateTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<ExecuteStateTransactionRequest> createRepeated() =>
      $pb.PbList<ExecuteStateTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static ExecuteStateTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteStateTransactionRequest>(create);
  static ExecuteStateTransactionRequest? _defaultInstance;

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
  $core.List<TransactionalStateOperation> get operations => $_getList(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class RegisterActorTimerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegisterActorTimerRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dueTime')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'period')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'callback')
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
            : 'ttl')
    ..hasRequiredFields = false;

  RegisterActorTimerRequest._() : super();
  factory RegisterActorTimerRequest({
    $core.String? actorType,
    $core.String? actorId,
    $core.String? name,
    $core.String? dueTime,
    $core.String? period,
    $core.String? callback,
    $core.List<$core.int>? data,
    $core.String? ttl,
  }) {
    final _result = create();
    if (actorType != null) {
      _result.actorType = actorType;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (dueTime != null) {
      _result.dueTime = dueTime;
    }
    if (period != null) {
      _result.period = period;
    }
    if (callback != null) {
      _result.callback = callback;
    }
    if (data != null) {
      _result.data = data;
    }
    if (ttl != null) {
      _result.ttl = ttl;
    }
    return _result;
  }
  factory RegisterActorTimerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterActorTimerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterActorTimerRequest clone() =>
      RegisterActorTimerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterActorTimerRequest copyWith(
          void Function(RegisterActorTimerRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterActorTimerRequest))
          as RegisterActorTimerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterActorTimerRequest create() => RegisterActorTimerRequest._();
  RegisterActorTimerRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterActorTimerRequest> createRepeated() =>
      $pb.PbList<RegisterActorTimerRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterActorTimerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterActorTimerRequest>(create);
  static RegisterActorTimerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get actorType => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get dueTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set dueTime($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDueTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearDueTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get period => $_getSZ(4);
  @$pb.TagNumber(5)
  set period($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPeriod() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriod() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get callback => $_getSZ(5);
  @$pb.TagNumber(6)
  set callback($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCallback() => $_has(5);
  @$pb.TagNumber(6)
  void clearCallback() => clearField(6);

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
  $core.String get ttl => $_getSZ(7);
  @$pb.TagNumber(8)
  set ttl($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasTtl() => $_has(7);
  @$pb.TagNumber(8)
  void clearTtl() => clearField(8);
}

class UnregisterActorTimerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UnregisterActorTimerRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  UnregisterActorTimerRequest._() : super();
  factory UnregisterActorTimerRequest({
    $core.String? actorType,
    $core.String? actorId,
    $core.String? name,
  }) {
    final _result = create();
    if (actorType != null) {
      _result.actorType = actorType;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory UnregisterActorTimerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnregisterActorTimerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UnregisterActorTimerRequest clone() =>
      UnregisterActorTimerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UnregisterActorTimerRequest copyWith(
          void Function(UnregisterActorTimerRequest) updates) =>
      super.copyWith(
              (message) => updates(message as UnregisterActorTimerRequest))
          as UnregisterActorTimerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnregisterActorTimerRequest create() =>
      UnregisterActorTimerRequest._();
  UnregisterActorTimerRequest createEmptyInstance() => create();
  static $pb.PbList<UnregisterActorTimerRequest> createRepeated() =>
      $pb.PbList<UnregisterActorTimerRequest>();
  @$core.pragma('dart2js:noInline')
  static UnregisterActorTimerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnregisterActorTimerRequest>(create);
  static UnregisterActorTimerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get actorType => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class RegisterActorReminderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegisterActorReminderRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dueTime')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'period')
    ..a<$core.List<$core.int>>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ttl')
    ..hasRequiredFields = false;

  RegisterActorReminderRequest._() : super();
  factory RegisterActorReminderRequest({
    $core.String? actorType,
    $core.String? actorId,
    $core.String? name,
    $core.String? dueTime,
    $core.String? period,
    $core.List<$core.int>? data,
    $core.String? ttl,
  }) {
    final _result = create();
    if (actorType != null) {
      _result.actorType = actorType;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (dueTime != null) {
      _result.dueTime = dueTime;
    }
    if (period != null) {
      _result.period = period;
    }
    if (data != null) {
      _result.data = data;
    }
    if (ttl != null) {
      _result.ttl = ttl;
    }
    return _result;
  }
  factory RegisterActorReminderRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterActorReminderRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterActorReminderRequest clone() =>
      RegisterActorReminderRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterActorReminderRequest copyWith(
          void Function(RegisterActorReminderRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RegisterActorReminderRequest))
          as RegisterActorReminderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterActorReminderRequest create() =>
      RegisterActorReminderRequest._();
  RegisterActorReminderRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterActorReminderRequest> createRepeated() =>
      $pb.PbList<RegisterActorReminderRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterActorReminderRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterActorReminderRequest>(create);
  static RegisterActorReminderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get actorType => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get dueTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set dueTime($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDueTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearDueTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get period => $_getSZ(4);
  @$pb.TagNumber(5)
  set period($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPeriod() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeriod() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get data => $_getN(5);
  @$pb.TagNumber(6)
  set data($core.List<$core.int> v) {
    $_setBytes(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(6)
  void clearData() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ttl => $_getSZ(6);
  @$pb.TagNumber(7)
  set ttl($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasTtl() => $_has(6);
  @$pb.TagNumber(7)
  void clearTtl() => clearField(7);
}

class UnregisterActorReminderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UnregisterActorReminderRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  UnregisterActorReminderRequest._() : super();
  factory UnregisterActorReminderRequest({
    $core.String? actorType,
    $core.String? actorId,
    $core.String? name,
  }) {
    final _result = create();
    if (actorType != null) {
      _result.actorType = actorType;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory UnregisterActorReminderRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnregisterActorReminderRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UnregisterActorReminderRequest clone() =>
      UnregisterActorReminderRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UnregisterActorReminderRequest copyWith(
          void Function(UnregisterActorReminderRequest) updates) =>
      super.copyWith(
              (message) => updates(message as UnregisterActorReminderRequest))
          as UnregisterActorReminderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnregisterActorReminderRequest create() =>
      UnregisterActorReminderRequest._();
  UnregisterActorReminderRequest createEmptyInstance() => create();
  static $pb.PbList<UnregisterActorReminderRequest> createRepeated() =>
      $pb.PbList<UnregisterActorReminderRequest>();
  @$core.pragma('dart2js:noInline')
  static UnregisterActorReminderRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnregisterActorReminderRequest>(create);
  static UnregisterActorReminderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get actorType => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GetActorStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetActorStateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..hasRequiredFields = false;

  GetActorStateRequest._() : super();
  factory GetActorStateRequest({
    $core.String? actorType,
    $core.String? actorId,
    $core.String? key,
  }) {
    final _result = create();
    if (actorType != null) {
      _result.actorType = actorType;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GetActorStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetActorStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetActorStateRequest clone() =>
      GetActorStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetActorStateRequest copyWith(void Function(GetActorStateRequest) updates) =>
      super.copyWith((message) => updates(message as GetActorStateRequest))
          as GetActorStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetActorStateRequest create() => GetActorStateRequest._();
  GetActorStateRequest createEmptyInstance() => create();
  static $pb.PbList<GetActorStateRequest> createRepeated() =>
      $pb.PbList<GetActorStateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetActorStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetActorStateRequest>(create);
  static GetActorStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get actorType => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
}

class GetActorStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetActorStateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  GetActorStateResponse._() : super();
  factory GetActorStateResponse({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory GetActorStateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetActorStateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetActorStateResponse clone() =>
      GetActorStateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetActorStateResponse copyWith(
          void Function(GetActorStateResponse) updates) =>
      super.copyWith((message) => updates(message as GetActorStateResponse))
          as GetActorStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetActorStateResponse create() => GetActorStateResponse._();
  GetActorStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetActorStateResponse> createRepeated() =>
      $pb.PbList<GetActorStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetActorStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetActorStateResponse>(create);
  static GetActorStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class ExecuteActorStateTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ExecuteActorStateTransactionRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorId')
    ..pc<TransactionalActorStateOperation>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operations',
        $pb.PbFieldType.PM,
        subBuilder: TransactionalActorStateOperation.create)
    ..hasRequiredFields = false;

  ExecuteActorStateTransactionRequest._() : super();
  factory ExecuteActorStateTransactionRequest({
    $core.String? actorType,
    $core.String? actorId,
    $core.Iterable<TransactionalActorStateOperation>? operations,
  }) {
    final _result = create();
    if (actorType != null) {
      _result.actorType = actorType;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (operations != null) {
      _result.operations.addAll(operations);
    }
    return _result;
  }
  factory ExecuteActorStateTransactionRequest.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecuteActorStateTransactionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExecuteActorStateTransactionRequest clone() =>
      ExecuteActorStateTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExecuteActorStateTransactionRequest copyWith(
          void Function(ExecuteActorStateTransactionRequest) updates) =>
      super.copyWith((message) =>
              updates(message as ExecuteActorStateTransactionRequest))
          as ExecuteActorStateTransactionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecuteActorStateTransactionRequest create() =>
      ExecuteActorStateTransactionRequest._();
  ExecuteActorStateTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<ExecuteActorStateTransactionRequest> createRepeated() =>
      $pb.PbList<ExecuteActorStateTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static ExecuteActorStateTransactionRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ExecuteActorStateTransactionRequest>(create);
  static ExecuteActorStateTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get actorType => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TransactionalActorStateOperation> get operations => $_getList(2);
}

class TransactionalActorStateOperation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionalActorStateOperation',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operationType',
        protoName: 'operationType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..aOM<$3.Any>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: $3.Any.create)
    ..hasRequiredFields = false;

  TransactionalActorStateOperation._() : super();
  factory TransactionalActorStateOperation({
    $core.String? operationType,
    $core.String? key,
    $3.Any? value,
  }) {
    final _result = create();
    if (operationType != null) {
      _result.operationType = operationType;
    }
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory TransactionalActorStateOperation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionalActorStateOperation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionalActorStateOperation clone() =>
      TransactionalActorStateOperation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionalActorStateOperation copyWith(
          void Function(TransactionalActorStateOperation) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionalActorStateOperation))
          as TransactionalActorStateOperation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionalActorStateOperation create() =>
      TransactionalActorStateOperation._();
  TransactionalActorStateOperation createEmptyInstance() => create();
  static $pb.PbList<TransactionalActorStateOperation> createRepeated() =>
      $pb.PbList<TransactionalActorStateOperation>();
  @$core.pragma('dart2js:noInline')
  static TransactionalActorStateOperation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionalActorStateOperation>(
          create);
  static TransactionalActorStateOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operationType => $_getSZ(0);
  @$pb.TagNumber(1)
  set operationType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOperationType() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperationType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $3.Any get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($3.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $3.Any ensureValue() => $_ensure(2);
}

class InvokeActorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvokeActorRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorType')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actorId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'method')
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  InvokeActorRequest._() : super();
  factory InvokeActorRequest({
    $core.String? actorType,
    $core.String? actorId,
    $core.String? method,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (actorType != null) {
      _result.actorType = actorType;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (method != null) {
      _result.method = method;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory InvokeActorRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeActorRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeActorRequest clone() => InvokeActorRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeActorRequest copyWith(void Function(InvokeActorRequest) updates) =>
      super.copyWith((message) => updates(message as InvokeActorRequest))
          as InvokeActorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeActorRequest create() => InvokeActorRequest._();
  InvokeActorRequest createEmptyInstance() => create();
  static $pb.PbList<InvokeActorRequest> createRepeated() =>
      $pb.PbList<InvokeActorRequest>();
  @$core.pragma('dart2js:noInline')
  static InvokeActorRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeActorRequest>(create);
  static InvokeActorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get actorType => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get method => $_getSZ(2);
  @$pb.TagNumber(3)
  set method($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethod() => clearField(3);

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
}

class InvokeActorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvokeActorResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  InvokeActorResponse._() : super();
  factory InvokeActorResponse({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory InvokeActorResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeActorResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeActorResponse clone() => InvokeActorResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeActorResponse copyWith(void Function(InvokeActorResponse) updates) =>
      super.copyWith((message) => updates(message as InvokeActorResponse))
          as InvokeActorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeActorResponse create() => InvokeActorResponse._();
  InvokeActorResponse createEmptyInstance() => create();
  static $pb.PbList<InvokeActorResponse> createRepeated() =>
      $pb.PbList<InvokeActorResponse>();
  @$core.pragma('dart2js:noInline')
  static InvokeActorResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeActorResponse>(create);
  static InvokeActorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class GetMetadataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMetadataResponse',
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
    ..pc<ActiveActorsCount>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'activeActorsCount',
        $pb.PbFieldType.PM,
        subBuilder: ActiveActorsCount.create)
    ..pc<RegisteredComponents>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'registeredComponents',
        $pb.PbFieldType.PM,
        subBuilder: RegisteredComponents.create)
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'extendedMetadata',
        entryClassName: 'GetMetadataResponse.ExtendedMetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetMetadataResponse._() : super();
  factory GetMetadataResponse({
    $core.String? id,
    $core.Iterable<ActiveActorsCount>? activeActorsCount,
    $core.Iterable<RegisteredComponents>? registeredComponents,
    $core.Map<$core.String, $core.String>? extendedMetadata,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (activeActorsCount != null) {
      _result.activeActorsCount.addAll(activeActorsCount);
    }
    if (registeredComponents != null) {
      _result.registeredComponents.addAll(registeredComponents);
    }
    if (extendedMetadata != null) {
      _result.extendedMetadata.addAll(extendedMetadata);
    }
    return _result;
  }
  factory GetMetadataResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMetadataResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMetadataResponse clone() => GetMetadataResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMetadataResponse copyWith(void Function(GetMetadataResponse) updates) =>
      super.copyWith((message) => updates(message as GetMetadataResponse))
          as GetMetadataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMetadataResponse create() => GetMetadataResponse._();
  GetMetadataResponse createEmptyInstance() => create();
  static $pb.PbList<GetMetadataResponse> createRepeated() =>
      $pb.PbList<GetMetadataResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMetadataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMetadataResponse>(create);
  static GetMetadataResponse? _defaultInstance;

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
  $core.List<ActiveActorsCount> get activeActorsCount => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<RegisteredComponents> get registeredComponents => $_getList(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get extendedMetadata => $_getMap(3);
}

class ActiveActorsCount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ActiveActorsCount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'count',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  ActiveActorsCount._() : super();
  factory ActiveActorsCount({
    $core.String? type,
    $core.int? count,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory ActiveActorsCount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActiveActorsCount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActiveActorsCount clone() => ActiveActorsCount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActiveActorsCount copyWith(void Function(ActiveActorsCount) updates) =>
      super.copyWith((message) => updates(message as ActiveActorsCount))
          as ActiveActorsCount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActiveActorsCount create() => ActiveActorsCount._();
  ActiveActorsCount createEmptyInstance() => create();
  static $pb.PbList<ActiveActorsCount> createRepeated() =>
      $pb.PbList<ActiveActorsCount>();
  @$core.pragma('dart2js:noInline')
  static ActiveActorsCount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActiveActorsCount>(create);
  static ActiveActorsCount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class RegisteredComponents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegisteredComponents',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version')
    ..hasRequiredFields = false;

  RegisteredComponents._() : super();
  factory RegisteredComponents({
    $core.String? name,
    $core.String? type,
    $core.String? version,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory RegisteredComponents.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisteredComponents.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisteredComponents clone() =>
      RegisteredComponents()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisteredComponents copyWith(void Function(RegisteredComponents) updates) =>
      super.copyWith((message) => updates(message as RegisteredComponents))
          as RegisteredComponents; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisteredComponents create() => RegisteredComponents._();
  RegisteredComponents createEmptyInstance() => create();
  static $pb.PbList<RegisteredComponents> createRepeated() =>
      $pb.PbList<RegisteredComponents>();
  @$core.pragma('dart2js:noInline')
  static RegisteredComponents getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisteredComponents>(create);
  static RegisteredComponents? _defaultInstance;

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
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);
}

class SetMetadataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SetMetadataRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  SetMetadataRequest._() : super();
  factory SetMetadataRequest({
    $core.String? key,
    $core.String? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SetMetadataRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetMetadataRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetMetadataRequest clone() => SetMetadataRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetMetadataRequest copyWith(void Function(SetMetadataRequest) updates) =>
      super.copyWith((message) => updates(message as SetMetadataRequest))
          as SetMetadataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetMetadataRequest create() => SetMetadataRequest._();
  SetMetadataRequest createEmptyInstance() => create();
  static $pb.PbList<SetMetadataRequest> createRepeated() =>
      $pb.PbList<SetMetadataRequest>();
  @$core.pragma('dart2js:noInline')
  static SetMetadataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetMetadataRequest>(create);
  static SetMetadataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class GetConfigurationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetConfigurationRequest',
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
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'keys')
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'GetConfigurationRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  GetConfigurationRequest._() : super();
  factory GetConfigurationRequest({
    $core.String? storeName,
    $core.Iterable<$core.String>? keys,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory GetConfigurationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetConfigurationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetConfigurationRequest clone() =>
      GetConfigurationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetConfigurationRequest copyWith(
          void Function(GetConfigurationRequest) updates) =>
      super.copyWith((message) => updates(message as GetConfigurationRequest))
          as GetConfigurationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConfigurationRequest create() => GetConfigurationRequest._();
  GetConfigurationRequest createEmptyInstance() => create();
  static $pb.PbList<GetConfigurationRequest> createRepeated() =>
      $pb.PbList<GetConfigurationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConfigurationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConfigurationRequest>(create);
  static GetConfigurationRequest? _defaultInstance;

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
  $core.List<$core.String> get keys => $_getList(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class GetConfigurationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetConfigurationResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..pc<$1.ConfigurationItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: $1.ConfigurationItem.create)
    ..hasRequiredFields = false;

  GetConfigurationResponse._() : super();
  factory GetConfigurationResponse({
    $core.Iterable<$1.ConfigurationItem>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GetConfigurationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetConfigurationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetConfigurationResponse clone() =>
      GetConfigurationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetConfigurationResponse copyWith(
          void Function(GetConfigurationResponse) updates) =>
      super.copyWith((message) => updates(message as GetConfigurationResponse))
          as GetConfigurationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConfigurationResponse create() => GetConfigurationResponse._();
  GetConfigurationResponse createEmptyInstance() => create();
  static $pb.PbList<GetConfigurationResponse> createRepeated() =>
      $pb.PbList<GetConfigurationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConfigurationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetConfigurationResponse>(create);
  static GetConfigurationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.ConfigurationItem> get items => $_getList(0);
}

class SubscribeConfigurationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SubscribeConfigurationRequest',
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
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'keys')
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'SubscribeConfigurationRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.runtime.v1'))
    ..hasRequiredFields = false;

  SubscribeConfigurationRequest._() : super();
  factory SubscribeConfigurationRequest({
    $core.String? storeName,
    $core.Iterable<$core.String>? keys,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (storeName != null) {
      _result.storeName = storeName;
    }
    if (keys != null) {
      _result.keys.addAll(keys);
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory SubscribeConfigurationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubscribeConfigurationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubscribeConfigurationRequest clone() =>
      SubscribeConfigurationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubscribeConfigurationRequest copyWith(
          void Function(SubscribeConfigurationRequest) updates) =>
      super.copyWith(
              (message) => updates(message as SubscribeConfigurationRequest))
          as SubscribeConfigurationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeConfigurationRequest create() =>
      SubscribeConfigurationRequest._();
  SubscribeConfigurationRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeConfigurationRequest> createRepeated() =>
      $pb.PbList<SubscribeConfigurationRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeConfigurationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscribeConfigurationRequest>(create);
  static SubscribeConfigurationRequest? _defaultInstance;

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
  $core.List<$core.String> get keys => $_getList(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class SubscribeConfigurationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SubscribeConfigurationResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.runtime.v1'),
      createEmptyInstance: create)
    ..pc<$1.ConfigurationItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: $1.ConfigurationItem.create)
    ..hasRequiredFields = false;

  SubscribeConfigurationResponse._() : super();
  factory SubscribeConfigurationResponse({
    $core.Iterable<$1.ConfigurationItem>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory SubscribeConfigurationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubscribeConfigurationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubscribeConfigurationResponse clone() =>
      SubscribeConfigurationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubscribeConfigurationResponse copyWith(
          void Function(SubscribeConfigurationResponse) updates) =>
      super.copyWith(
              (message) => updates(message as SubscribeConfigurationResponse))
          as SubscribeConfigurationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeConfigurationResponse create() =>
      SubscribeConfigurationResponse._();
  SubscribeConfigurationResponse createEmptyInstance() => create();
  static $pb.PbList<SubscribeConfigurationResponse> createRepeated() =>
      $pb.PbList<SubscribeConfigurationResponse>();
  @$core.pragma('dart2js:noInline')
  static SubscribeConfigurationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscribeConfigurationResponse>(create);
  static SubscribeConfigurationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.ConfigurationItem> get items => $_getList(0);
}
