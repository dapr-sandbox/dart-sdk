///
//  Generated code. Do not modify.
//  source: dapr/proto/common/v1/common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/any.pb.dart' as $0;

import 'common.pbenum.dart';

export 'common.pbenum.dart';

class HTTPExtension extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'HTTPExtension',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.common.v1'),
      createEmptyInstance: create)
    ..e<HTTPExtension_Verb>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'verb',
        $pb.PbFieldType.OE,
        defaultOrMaker: HTTPExtension_Verb.NONE,
        valueOf: HTTPExtension_Verb.valueOf,
        enumValues: HTTPExtension_Verb.values)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'querystring')
    ..hasRequiredFields = false;

  HTTPExtension._() : super();
  factory HTTPExtension({
    HTTPExtension_Verb? verb,
    $core.String? querystring,
  }) {
    final _result = create();
    if (verb != null) {
      _result.verb = verb;
    }
    if (querystring != null) {
      _result.querystring = querystring;
    }
    return _result;
  }
  factory HTTPExtension.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HTTPExtension.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HTTPExtension clone() => HTTPExtension()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HTTPExtension copyWith(void Function(HTTPExtension) updates) =>
      super.copyWith((message) => updates(message as HTTPExtension))
          as HTTPExtension; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HTTPExtension create() => HTTPExtension._();
  HTTPExtension createEmptyInstance() => create();
  static $pb.PbList<HTTPExtension> createRepeated() =>
      $pb.PbList<HTTPExtension>();
  @$core.pragma('dart2js:noInline')
  static HTTPExtension getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HTTPExtension>(create);
  static HTTPExtension? _defaultInstance;

  @$pb.TagNumber(1)
  HTTPExtension_Verb get verb => $_getN(0);
  @$pb.TagNumber(1)
  set verb(HTTPExtension_Verb v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVerb() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerb() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get querystring => $_getSZ(1);
  @$pb.TagNumber(2)
  set querystring($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasQuerystring() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuerystring() => clearField(2);
}

class InvokeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvokeRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.common.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'method')
    ..aOM<$0.Any>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        subBuilder: $0.Any.create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contentType')
    ..aOM<HTTPExtension>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'httpExtension',
        subBuilder: HTTPExtension.create)
    ..hasRequiredFields = false;

  InvokeRequest._() : super();
  factory InvokeRequest({
    $core.String? method,
    $0.Any? data,
    $core.String? contentType,
    HTTPExtension? httpExtension,
  }) {
    final _result = create();
    if (method != null) {
      _result.method = method;
    }
    if (data != null) {
      _result.data = data;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (httpExtension != null) {
      _result.httpExtension = httpExtension;
    }
    return _result;
  }
  factory InvokeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeRequest clone() => InvokeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeRequest copyWith(void Function(InvokeRequest) updates) =>
      super.copyWith((message) => updates(message as InvokeRequest))
          as InvokeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeRequest create() => InvokeRequest._();
  InvokeRequest createEmptyInstance() => create();
  static $pb.PbList<InvokeRequest> createRepeated() =>
      $pb.PbList<InvokeRequest>();
  @$core.pragma('dart2js:noInline')
  static InvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeRequest>(create);
  static InvokeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get method => $_getSZ(0);
  @$pb.TagNumber(1)
  set method($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearMethod() => clearField(1);

  @$pb.TagNumber(2)
  $0.Any get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($0.Any v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  $0.Any ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get contentType => $_getSZ(2);
  @$pb.TagNumber(3)
  set contentType($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContentType() => $_has(2);
  @$pb.TagNumber(3)
  void clearContentType() => clearField(3);

  @$pb.TagNumber(4)
  HTTPExtension get httpExtension => $_getN(3);
  @$pb.TagNumber(4)
  set httpExtension(HTTPExtension v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHttpExtension() => $_has(3);
  @$pb.TagNumber(4)
  void clearHttpExtension() => clearField(4);
  @$pb.TagNumber(4)
  HTTPExtension ensureHttpExtension() => $_ensure(3);
}

class InvokeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvokeResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.common.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Any>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        subBuilder: $0.Any.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contentType')
    ..hasRequiredFields = false;

  InvokeResponse._() : super();
  factory InvokeResponse({
    $0.Any? data,
    $core.String? contentType,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    return _result;
  }
  factory InvokeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeResponse clone() => InvokeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeResponse copyWith(void Function(InvokeResponse) updates) =>
      super.copyWith((message) => updates(message as InvokeResponse))
          as InvokeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeResponse create() => InvokeResponse._();
  InvokeResponse createEmptyInstance() => create();
  static $pb.PbList<InvokeResponse> createRepeated() =>
      $pb.PbList<InvokeResponse>();
  @$core.pragma('dart2js:noInline')
  static InvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeResponse>(create);
  static InvokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Any get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($0.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get contentType => $_getSZ(1);
  @$pb.TagNumber(2)
  set contentType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContentType() => $_has(1);
  @$pb.TagNumber(2)
  void clearContentType() => clearField(2);
}

class StateItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StateItem',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.common.v1'),
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
            : 'value',
        $pb.PbFieldType.OY)
    ..aOM<Etag>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'etag',
        subBuilder: Etag.create)
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'StateItem.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.common.v1'))
    ..aOM<StateOptions>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'options',
        subBuilder: StateOptions.create)
    ..hasRequiredFields = false;

  StateItem._() : super();
  factory StateItem({
    $core.String? key,
    $core.List<$core.int>? value,
    Etag? etag,
    $core.Map<$core.String, $core.String>? metadata,
    StateOptions? options,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (etag != null) {
      _result.etag = etag;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    if (options != null) {
      _result.options = options;
    }
    return _result;
  }
  factory StateItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StateItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StateItem clone() => StateItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StateItem copyWith(void Function(StateItem) updates) =>
      super.copyWith((message) => updates(message as StateItem))
          as StateItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StateItem create() => StateItem._();
  StateItem createEmptyInstance() => create();
  static $pb.PbList<StateItem> createRepeated() => $pb.PbList<StateItem>();
  @$core.pragma('dart2js:noInline')
  static StateItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StateItem>(create);
  static StateItem? _defaultInstance;

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
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  Etag get etag => $_getN(2);
  @$pb.TagNumber(3)
  set etag(Etag v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEtag() => $_has(2);
  @$pb.TagNumber(3)
  void clearEtag() => clearField(3);
  @$pb.TagNumber(3)
  Etag ensureEtag() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(3);

  @$pb.TagNumber(5)
  StateOptions get options => $_getN(4);
  @$pb.TagNumber(5)
  set options(StateOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptions() => clearField(5);
  @$pb.TagNumber(5)
  StateOptions ensureOptions() => $_ensure(4);
}

class Etag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Etag',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.common.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  Etag._() : super();
  factory Etag({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Etag.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Etag.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Etag clone() => Etag()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Etag copyWith(void Function(Etag) updates) =>
      super.copyWith((message) => updates(message as Etag))
          as Etag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Etag create() => Etag._();
  Etag createEmptyInstance() => create();
  static $pb.PbList<Etag> createRepeated() => $pb.PbList<Etag>();
  @$core.pragma('dart2js:noInline')
  static Etag getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Etag>(create);
  static Etag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class StateOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StateOptions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.common.v1'),
      createEmptyInstance: create)
    ..e<StateOptions_StateConcurrency>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'concurrency',
        $pb.PbFieldType.OE,
        defaultOrMaker: StateOptions_StateConcurrency.CONCURRENCY_UNSPECIFIED,
        valueOf: StateOptions_StateConcurrency.valueOf,
        enumValues: StateOptions_StateConcurrency.values)
    ..e<StateOptions_StateConsistency>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'consistency',
        $pb.PbFieldType.OE,
        defaultOrMaker: StateOptions_StateConsistency.CONSISTENCY_UNSPECIFIED,
        valueOf: StateOptions_StateConsistency.valueOf,
        enumValues: StateOptions_StateConsistency.values)
    ..hasRequiredFields = false;

  StateOptions._() : super();
  factory StateOptions({
    StateOptions_StateConcurrency? concurrency,
    StateOptions_StateConsistency? consistency,
  }) {
    final _result = create();
    if (concurrency != null) {
      _result.concurrency = concurrency;
    }
    if (consistency != null) {
      _result.consistency = consistency;
    }
    return _result;
  }
  factory StateOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StateOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StateOptions clone() => StateOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StateOptions copyWith(void Function(StateOptions) updates) =>
      super.copyWith((message) => updates(message as StateOptions))
          as StateOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StateOptions create() => StateOptions._();
  StateOptions createEmptyInstance() => create();
  static $pb.PbList<StateOptions> createRepeated() =>
      $pb.PbList<StateOptions>();
  @$core.pragma('dart2js:noInline')
  static StateOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StateOptions>(create);
  static StateOptions? _defaultInstance;

  @$pb.TagNumber(1)
  StateOptions_StateConcurrency get concurrency => $_getN(0);
  @$pb.TagNumber(1)
  set concurrency(StateOptions_StateConcurrency v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConcurrency() => $_has(0);
  @$pb.TagNumber(1)
  void clearConcurrency() => clearField(1);

  @$pb.TagNumber(2)
  StateOptions_StateConsistency get consistency => $_getN(1);
  @$pb.TagNumber(2)
  set consistency(StateOptions_StateConsistency v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
}

class ConfigurationItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ConfigurationItem',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'dapr.proto.common.v1'),
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
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version')
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'ConfigurationItem.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('dapr.proto.common.v1'))
    ..hasRequiredFields = false;

  ConfigurationItem._() : super();
  factory ConfigurationItem({
    $core.String? key,
    $core.String? value,
    $core.String? version,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (version != null) {
      _result.version = version;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory ConfigurationItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfigurationItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConfigurationItem clone() => ConfigurationItem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConfigurationItem copyWith(void Function(ConfigurationItem) updates) =>
      super.copyWith((message) => updates(message as ConfigurationItem))
          as ConfigurationItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfigurationItem create() => ConfigurationItem._();
  ConfigurationItem createEmptyInstance() => create();
  static $pb.PbList<ConfigurationItem> createRepeated() =>
      $pb.PbList<ConfigurationItem>();
  @$core.pragma('dart2js:noInline')
  static ConfigurationItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigurationItem>(create);
  static ConfigurationItem? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(3);
}
