///
//  Generated code. Do not modify.
//  source: dapr/proto/runtime/v1/appcallback.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TopicEventResponse_TopicEventResponseStatus extends $pb.ProtobufEnum {
  static const TopicEventResponse_TopicEventResponseStatus SUCCESS =
      TopicEventResponse_TopicEventResponseStatus._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'SUCCESS');
  static const TopicEventResponse_TopicEventResponseStatus RETRY =
      TopicEventResponse_TopicEventResponseStatus._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'RETRY');
  static const TopicEventResponse_TopicEventResponseStatus DROP =
      TopicEventResponse_TopicEventResponseStatus._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'DROP');

  static const $core.List<TopicEventResponse_TopicEventResponseStatus> values =
      <TopicEventResponse_TopicEventResponseStatus>[
    SUCCESS,
    RETRY,
    DROP,
  ];

  static final $core.Map<$core.int, TopicEventResponse_TopicEventResponseStatus>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static TopicEventResponse_TopicEventResponseStatus? valueOf(
          $core.int value) =>
      _byValue[value];

  const TopicEventResponse_TopicEventResponseStatus._(
      $core.int v, $core.String n)
      : super(v, n);
}

class BindingEventResponse_BindingEventConcurrency extends $pb.ProtobufEnum {
  static const BindingEventResponse_BindingEventConcurrency SEQUENTIAL =
      BindingEventResponse_BindingEventConcurrency._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'SEQUENTIAL');
  static const BindingEventResponse_BindingEventConcurrency PARALLEL =
      BindingEventResponse_BindingEventConcurrency._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'PARALLEL');

  static const $core.List<BindingEventResponse_BindingEventConcurrency> values =
      <BindingEventResponse_BindingEventConcurrency>[
    SEQUENTIAL,
    PARALLEL,
  ];

  static final $core
          .Map<$core.int, BindingEventResponse_BindingEventConcurrency>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static BindingEventResponse_BindingEventConcurrency? valueOf(
          $core.int value) =>
      _byValue[value];

  const BindingEventResponse_BindingEventConcurrency._(
      $core.int v, $core.String n)
      : super(v, n);
}
