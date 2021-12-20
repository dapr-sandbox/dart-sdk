///
//  Generated code. Do not modify.
//  source: dapr/proto/common/v1/common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class HTTPExtension_Verb extends $pb.ProtobufEnum {
  static const HTTPExtension_Verb NONE = HTTPExtension_Verb._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'NONE');
  static const HTTPExtension_Verb GET = HTTPExtension_Verb._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'GET');
  static const HTTPExtension_Verb HEAD = HTTPExtension_Verb._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'HEAD');
  static const HTTPExtension_Verb POST = HTTPExtension_Verb._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'POST');
  static const HTTPExtension_Verb PUT = HTTPExtension_Verb._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PUT');
  static const HTTPExtension_Verb DELETE = HTTPExtension_Verb._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DELETE');
  static const HTTPExtension_Verb CONNECT = HTTPExtension_Verb._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CONNECT');
  static const HTTPExtension_Verb OPTIONS = HTTPExtension_Verb._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'OPTIONS');
  static const HTTPExtension_Verb TRACE = HTTPExtension_Verb._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TRACE');
  static const HTTPExtension_Verb PATCH = HTTPExtension_Verb._(
      9,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PATCH');

  static const $core.List<HTTPExtension_Verb> values = <HTTPExtension_Verb>[
    NONE,
    GET,
    HEAD,
    POST,
    PUT,
    DELETE,
    CONNECT,
    OPTIONS,
    TRACE,
    PATCH,
  ];

  static final $core.Map<$core.int, HTTPExtension_Verb> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static HTTPExtension_Verb? valueOf($core.int value) => _byValue[value];

  const HTTPExtension_Verb._($core.int v, $core.String n) : super(v, n);
}

class StateOptions_StateConcurrency extends $pb.ProtobufEnum {
  static const StateOptions_StateConcurrency CONCURRENCY_UNSPECIFIED =
      StateOptions_StateConcurrency._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'CONCURRENCY_UNSPECIFIED');
  static const StateOptions_StateConcurrency CONCURRENCY_FIRST_WRITE =
      StateOptions_StateConcurrency._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'CONCURRENCY_FIRST_WRITE');
  static const StateOptions_StateConcurrency CONCURRENCY_LAST_WRITE =
      StateOptions_StateConcurrency._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'CONCURRENCY_LAST_WRITE');

  static const $core.List<StateOptions_StateConcurrency> values =
      <StateOptions_StateConcurrency>[
    CONCURRENCY_UNSPECIFIED,
    CONCURRENCY_FIRST_WRITE,
    CONCURRENCY_LAST_WRITE,
  ];

  static final $core.Map<$core.int, StateOptions_StateConcurrency> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StateOptions_StateConcurrency? valueOf($core.int value) =>
      _byValue[value];

  const StateOptions_StateConcurrency._($core.int v, $core.String n)
      : super(v, n);
}

class StateOptions_StateConsistency extends $pb.ProtobufEnum {
  static const StateOptions_StateConsistency CONSISTENCY_UNSPECIFIED =
      StateOptions_StateConsistency._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'CONSISTENCY_UNSPECIFIED');
  static const StateOptions_StateConsistency CONSISTENCY_EVENTUAL =
      StateOptions_StateConsistency._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'CONSISTENCY_EVENTUAL');
  static const StateOptions_StateConsistency CONSISTENCY_STRONG =
      StateOptions_StateConsistency._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'CONSISTENCY_STRONG');

  static const $core.List<StateOptions_StateConsistency> values =
      <StateOptions_StateConsistency>[
    CONSISTENCY_UNSPECIFIED,
    CONSISTENCY_EVENTUAL,
    CONSISTENCY_STRONG,
  ];

  static final $core.Map<$core.int, StateOptions_StateConsistency> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StateOptions_StateConsistency? valueOf($core.int value) =>
      _byValue[value];

  const StateOptions_StateConsistency._($core.int v, $core.String n)
      : super(v, n);
}
