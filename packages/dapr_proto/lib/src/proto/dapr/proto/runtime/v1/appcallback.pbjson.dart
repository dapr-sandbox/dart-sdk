///
//  Generated code. Do not modify.
//  source: dapr/proto/runtime/v1/appcallback.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use topicEventRequestDescriptor instead')
const TopicEventRequest$json = const {
  '1': 'TopicEventRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'spec_version', '3': 4, '4': 1, '5': 9, '10': 'specVersion'},
    const {
      '1': 'data_content_type',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'dataContentType'
    },
    const {'1': 'data', '3': 7, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'topic', '3': 6, '4': 1, '5': 9, '10': 'topic'},
    const {'1': 'pubsub_name', '3': 8, '4': 1, '5': 9, '10': 'pubsubName'},
    const {'1': 'path', '3': 9, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `TopicEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicEventRequestDescriptor = $convert.base64Decode(
    'ChFUb3BpY0V2ZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFgoGc291cmNlGAIgASgJUgZzb3VyY2USEgoEdHlwZRgDIAEoCVIEdHlwZRIhCgxzcGVjX3ZlcnNpb24YBCABKAlSC3NwZWNWZXJzaW9uEioKEWRhdGFfY29udGVudF90eXBlGAUgASgJUg9kYXRhQ29udGVudFR5cGUSEgoEZGF0YRgHIAEoDFIEZGF0YRIUCgV0b3BpYxgGIAEoCVIFdG9waWMSHwoLcHVic3ViX25hbWUYCCABKAlSCnB1YnN1Yk5hbWUSEgoEcGF0aBgJIAEoCVIEcGF0aA==');
@$core.Deprecated('Use topicEventResponseDescriptor instead')
const TopicEventResponse$json = const {
  '1': 'TopicEventResponse',
  '2': const [
    const {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.dapr.proto.runtime.v1.TopicEventResponse.TopicEventResponseStatus',
      '10': 'status'
    },
  ],
  '4': const [TopicEventResponse_TopicEventResponseStatus$json],
};

@$core.Deprecated('Use topicEventResponseDescriptor instead')
const TopicEventResponse_TopicEventResponseStatus$json = const {
  '1': 'TopicEventResponseStatus',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'RETRY', '2': 1},
    const {'1': 'DROP', '2': 2},
  ],
};

/// Descriptor for `TopicEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicEventResponseDescriptor = $convert.base64Decode(
    'ChJUb3BpY0V2ZW50UmVzcG9uc2USWgoGc3RhdHVzGAEgASgOMkIuZGFwci5wcm90by5ydW50aW1lLnYxLlRvcGljRXZlbnRSZXNwb25zZS5Ub3BpY0V2ZW50UmVzcG9uc2VTdGF0dXNSBnN0YXR1cyI8ChhUb3BpY0V2ZW50UmVzcG9uc2VTdGF0dXMSCwoHU1VDQ0VTUxAAEgkKBVJFVFJZEAESCAoERFJPUBAC');
@$core.Deprecated('Use bindingEventRequestDescriptor instead')
const BindingEventRequest$json = const {
  '1': 'BindingEventRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.BindingEventRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [BindingEventRequest_MetadataEntry$json],
};

@$core.Deprecated('Use bindingEventRequestDescriptor instead')
const BindingEventRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `BindingEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindingEventRequestDescriptor = $convert.base64Decode(
    'ChNCaW5kaW5nRXZlbnRSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEZGF0YRgCIAEoDFIEZGF0YRJUCghtZXRhZGF0YRgDIAMoCzI4LmRhcHIucHJvdG8ucnVudGltZS52MS5CaW5kaW5nRXZlbnRSZXF1ZXN0Lk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use bindingEventResponseDescriptor instead')
const BindingEventResponse$json = const {
  '1': 'BindingEventResponse',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {
      '1': 'states',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.common.v1.StateItem',
      '10': 'states'
    },
    const {'1': 'to', '3': 3, '4': 3, '5': 9, '10': 'to'},
    const {'1': 'data', '3': 4, '4': 1, '5': 12, '10': 'data'},
    const {
      '1': 'concurrency',
      '3': 5,
      '4': 1,
      '5': 14,
      '6':
          '.dapr.proto.runtime.v1.BindingEventResponse.BindingEventConcurrency',
      '10': 'concurrency'
    },
  ],
  '4': const [BindingEventResponse_BindingEventConcurrency$json],
};

@$core.Deprecated('Use bindingEventResponseDescriptor instead')
const BindingEventResponse_BindingEventConcurrency$json = const {
  '1': 'BindingEventConcurrency',
  '2': const [
    const {'1': 'SEQUENTIAL', '2': 0},
    const {'1': 'PARALLEL', '2': 1},
  ],
};

/// Descriptor for `BindingEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindingEventResponseDescriptor = $convert.base64Decode(
    'ChRCaW5kaW5nRXZlbnRSZXNwb25zZRIdCgpzdG9yZV9uYW1lGAEgASgJUglzdG9yZU5hbWUSNwoGc3RhdGVzGAIgAygLMh8uZGFwci5wcm90by5jb21tb24udjEuU3RhdGVJdGVtUgZzdGF0ZXMSDgoCdG8YAyADKAlSAnRvEhIKBGRhdGEYBCABKAxSBGRhdGESZQoLY29uY3VycmVuY3kYBSABKA4yQy5kYXByLnByb3RvLnJ1bnRpbWUudjEuQmluZGluZ0V2ZW50UmVzcG9uc2UuQmluZGluZ0V2ZW50Q29uY3VycmVuY3lSC2NvbmN1cnJlbmN5IjcKF0JpbmRpbmdFdmVudENvbmN1cnJlbmN5Eg4KClNFUVVFTlRJQUwQABIMCghQQVJBTExFTBAB');
@$core.Deprecated('Use listTopicSubscriptionsResponseDescriptor instead')
const ListTopicSubscriptionsResponse$json = const {
  '1': 'ListTopicSubscriptionsResponse',
  '2': const [
    const {
      '1': 'subscriptions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.TopicSubscription',
      '10': 'subscriptions'
    },
  ],
};

/// Descriptor for `ListTopicSubscriptionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTopicSubscriptionsResponseDescriptor =
    $convert.base64Decode(
        'Ch5MaXN0VG9waWNTdWJzY3JpcHRpb25zUmVzcG9uc2USTgoNc3Vic2NyaXB0aW9ucxgBIAMoCzIoLmRhcHIucHJvdG8ucnVudGltZS52MS5Ub3BpY1N1YnNjcmlwdGlvblINc3Vic2NyaXB0aW9ucw==');
@$core.Deprecated('Use topicSubscriptionDescriptor instead')
const TopicSubscription$json = const {
  '1': 'TopicSubscription',
  '2': const [
    const {'1': 'pubsub_name', '3': 1, '4': 1, '5': 9, '10': 'pubsubName'},
    const {'1': 'topic', '3': 2, '4': 1, '5': 9, '10': 'topic'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.TopicSubscription.MetadataEntry',
      '10': 'metadata'
    },
    const {
      '1': 'routes',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.TopicRoutes',
      '10': 'routes'
    },
  ],
  '3': const [TopicSubscription_MetadataEntry$json],
};

@$core.Deprecated('Use topicSubscriptionDescriptor instead')
const TopicSubscription_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `TopicSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicSubscriptionDescriptor = $convert.base64Decode(
    'ChFUb3BpY1N1YnNjcmlwdGlvbhIfCgtwdWJzdWJfbmFtZRgBIAEoCVIKcHVic3ViTmFtZRIUCgV0b3BpYxgCIAEoCVIFdG9waWMSUgoIbWV0YWRhdGEYAyADKAsyNi5kYXByLnByb3RvLnJ1bnRpbWUudjEuVG9waWNTdWJzY3JpcHRpb24uTWV0YWRhdGFFbnRyeVIIbWV0YWRhdGESOgoGcm91dGVzGAUgASgLMiIuZGFwci5wcm90by5ydW50aW1lLnYxLlRvcGljUm91dGVzUgZyb3V0ZXMaOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use topicRoutesDescriptor instead')
const TopicRoutes$json = const {
  '1': 'TopicRoutes',
  '2': const [
    const {
      '1': 'rules',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.TopicRule',
      '10': 'rules'
    },
    const {'1': 'default', '3': 2, '4': 1, '5': 9, '10': 'default'},
  ],
};

/// Descriptor for `TopicRoutes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicRoutesDescriptor = $convert.base64Decode(
    'CgtUb3BpY1JvdXRlcxI2CgVydWxlcxgBIAMoCzIgLmRhcHIucHJvdG8ucnVudGltZS52MS5Ub3BpY1J1bGVSBXJ1bGVzEhgKB2RlZmF1bHQYAiABKAlSB2RlZmF1bHQ=');
@$core.Deprecated('Use topicRuleDescriptor instead')
const TopicRule$json = const {
  '1': 'TopicRule',
  '2': const [
    const {'1': 'match', '3': 1, '4': 1, '5': 9, '10': 'match'},
    const {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `TopicRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicRuleDescriptor = $convert.base64Decode(
    'CglUb3BpY1J1bGUSFAoFbWF0Y2gYASABKAlSBW1hdGNoEhIKBHBhdGgYAiABKAlSBHBhdGg=');
@$core.Deprecated('Use listInputBindingsResponseDescriptor instead')
const ListInputBindingsResponse$json = const {
  '1': 'ListInputBindingsResponse',
  '2': const [
    const {'1': 'bindings', '3': 1, '4': 3, '5': 9, '10': 'bindings'},
  ],
};

/// Descriptor for `ListInputBindingsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInputBindingsResponseDescriptor =
    $convert.base64Decode(
        'ChlMaXN0SW5wdXRCaW5kaW5nc1Jlc3BvbnNlEhoKCGJpbmRpbmdzGAEgAygJUghiaW5kaW5ncw==');
