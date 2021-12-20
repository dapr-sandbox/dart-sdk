///
//  Generated code. Do not modify.
//  source: dapr/proto/runtime/v1/dapr.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use invokeServiceRequestDescriptor instead')
const InvokeServiceRequest$json = const {
  '1': 'InvokeServiceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'message',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.common.v1.InvokeRequest',
      '10': 'message'
    },
  ],
};

/// Descriptor for `InvokeServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeServiceRequestDescriptor = $convert.base64Decode(
    'ChRJbnZva2VTZXJ2aWNlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSPQoHbWVzc2FnZRgDIAEoCzIjLmRhcHIucHJvdG8uY29tbW9uLnYxLkludm9rZVJlcXVlc3RSB21lc3NhZ2U=');
@$core.Deprecated('Use getStateRequestDescriptor instead')
const GetStateRequest$json = const {
  '1': 'GetStateRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'consistency',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.dapr.proto.common.v1.StateOptions.StateConsistency',
      '10': 'consistency'
    },
    const {
      '1': 'metadata',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetStateRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [GetStateRequest_MetadataEntry$json],
};

@$core.Deprecated('Use getStateRequestDescriptor instead')
const GetStateRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStateRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRTdGF0ZVJlcXVlc3QSHQoKc3RvcmVfbmFtZRgBIAEoCVIJc3RvcmVOYW1lEhAKA2tleRgCIAEoCVIDa2V5ElUKC2NvbnNpc3RlbmN5GAMgASgOMjMuZGFwci5wcm90by5jb21tb24udjEuU3RhdGVPcHRpb25zLlN0YXRlQ29uc2lzdGVuY3lSC2NvbnNpc3RlbmN5ElAKCG1ldGFkYXRhGAQgAygLMjQuZGFwci5wcm90by5ydW50aW1lLnYxLkdldFN0YXRlUmVxdWVzdC5NZXRhZGF0YUVudHJ5UghtZXRhZGF0YRo7Cg1NZXRhZGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use getBulkStateRequestDescriptor instead')
const GetBulkStateRequest$json = const {
  '1': 'GetBulkStateRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
    const {'1': 'parallelism', '3': 3, '4': 1, '5': 5, '10': 'parallelism'},
    const {
      '1': 'metadata',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetBulkStateRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [GetBulkStateRequest_MetadataEntry$json],
};

@$core.Deprecated('Use getBulkStateRequestDescriptor instead')
const GetBulkStateRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetBulkStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBulkStateRequestDescriptor = $convert.base64Decode(
    'ChNHZXRCdWxrU3RhdGVSZXF1ZXN0Eh0KCnN0b3JlX25hbWUYASABKAlSCXN0b3JlTmFtZRISCgRrZXlzGAIgAygJUgRrZXlzEiAKC3BhcmFsbGVsaXNtGAMgASgFUgtwYXJhbGxlbGlzbRJUCghtZXRhZGF0YRgEIAMoCzI4LmRhcHIucHJvdG8ucnVudGltZS52MS5HZXRCdWxrU3RhdGVSZXF1ZXN0Lk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use getBulkStateResponseDescriptor instead')
const GetBulkStateResponse$json = const {
  '1': 'GetBulkStateResponse',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.BulkStateItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetBulkStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBulkStateResponseDescriptor = $convert.base64Decode(
    'ChRHZXRCdWxrU3RhdGVSZXNwb25zZRI6CgVpdGVtcxgBIAMoCzIkLmRhcHIucHJvdG8ucnVudGltZS52MS5CdWxrU3RhdGVJdGVtUgVpdGVtcw==');
@$core.Deprecated('Use bulkStateItemDescriptor instead')
const BulkStateItem$json = const {
  '1': 'BulkStateItem',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'etag', '3': 3, '4': 1, '5': 9, '10': 'etag'},
    const {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
    const {
      '1': 'metadata',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.BulkStateItem.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [BulkStateItem_MetadataEntry$json],
};

@$core.Deprecated('Use bulkStateItemDescriptor instead')
const BulkStateItem_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `BulkStateItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkStateItemDescriptor = $convert.base64Decode(
    'Cg1CdWxrU3RhdGVJdGVtEhAKA2tleRgBIAEoCVIDa2V5EhIKBGRhdGEYAiABKAxSBGRhdGESEgoEZXRhZxgDIAEoCVIEZXRhZxIUCgVlcnJvchgEIAEoCVIFZXJyb3ISTgoIbWV0YWRhdGEYBSADKAsyMi5kYXByLnByb3RvLnJ1bnRpbWUudjEuQnVsa1N0YXRlSXRlbS5NZXRhZGF0YUVudHJ5UghtZXRhZGF0YRo7Cg1NZXRhZGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use getStateResponseDescriptor instead')
const GetStateResponse$json = const {
  '1': 'GetStateResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'etag', '3': 2, '4': 1, '5': 9, '10': 'etag'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetStateResponse.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [GetStateResponse_MetadataEntry$json],
};

@$core.Deprecated('Use getStateResponseDescriptor instead')
const GetStateResponse_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStateResponseDescriptor = $convert.base64Decode(
    'ChBHZXRTdGF0ZVJlc3BvbnNlEhIKBGRhdGEYASABKAxSBGRhdGESEgoEZXRhZxgCIAEoCVIEZXRhZxJRCghtZXRhZGF0YRgDIAMoCzI1LmRhcHIucHJvdG8ucnVudGltZS52MS5HZXRTdGF0ZVJlc3BvbnNlLk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use deleteStateRequestDescriptor instead')
const DeleteStateRequest$json = const {
  '1': 'DeleteStateRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'etag',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.common.v1.Etag',
      '10': 'etag'
    },
    const {
      '1': 'options',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.common.v1.StateOptions',
      '10': 'options'
    },
    const {
      '1': 'metadata',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.DeleteStateRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [DeleteStateRequest_MetadataEntry$json],
};

@$core.Deprecated('Use deleteStateRequestDescriptor instead')
const DeleteStateRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `DeleteStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStateRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVTdGF0ZVJlcXVlc3QSHQoKc3RvcmVfbmFtZRgBIAEoCVIJc3RvcmVOYW1lEhAKA2tleRgCIAEoCVIDa2V5Ei4KBGV0YWcYAyABKAsyGi5kYXByLnByb3RvLmNvbW1vbi52MS5FdGFnUgRldGFnEjwKB29wdGlvbnMYBCABKAsyIi5kYXByLnByb3RvLmNvbW1vbi52MS5TdGF0ZU9wdGlvbnNSB29wdGlvbnMSUwoIbWV0YWRhdGEYBSADKAsyNy5kYXByLnByb3RvLnJ1bnRpbWUudjEuRGVsZXRlU3RhdGVSZXF1ZXN0Lk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use deleteBulkStateRequestDescriptor instead')
const DeleteBulkStateRequest$json = const {
  '1': 'DeleteBulkStateRequest',
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
  ],
};

/// Descriptor for `DeleteBulkStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBulkStateRequestDescriptor =
    $convert.base64Decode(
        'ChZEZWxldGVCdWxrU3RhdGVSZXF1ZXN0Eh0KCnN0b3JlX25hbWUYASABKAlSCXN0b3JlTmFtZRI3CgZzdGF0ZXMYAiADKAsyHy5kYXByLnByb3RvLmNvbW1vbi52MS5TdGF0ZUl0ZW1SBnN0YXRlcw==');
@$core.Deprecated('Use saveStateRequestDescriptor instead')
const SaveStateRequest$json = const {
  '1': 'SaveStateRequest',
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
  ],
};

/// Descriptor for `SaveStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveStateRequestDescriptor = $convert.base64Decode(
    'ChBTYXZlU3RhdGVSZXF1ZXN0Eh0KCnN0b3JlX25hbWUYASABKAlSCXN0b3JlTmFtZRI3CgZzdGF0ZXMYAiADKAsyHy5kYXByLnByb3RvLmNvbW1vbi52MS5TdGF0ZUl0ZW1SBnN0YXRlcw==');
@$core.Deprecated('Use queryStateRequestDescriptor instead')
const QueryStateRequest$json = const {
  '1': 'QueryStateRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'query', '3': 2, '4': 1, '5': 9, '10': 'query'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.QueryStateRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [QueryStateRequest_MetadataEntry$json],
};

@$core.Deprecated('Use queryStateRequestDescriptor instead')
const QueryStateRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `QueryStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryStateRequestDescriptor = $convert.base64Decode(
    'ChFRdWVyeVN0YXRlUmVxdWVzdBIdCgpzdG9yZV9uYW1lGAEgASgJUglzdG9yZU5hbWUSFAoFcXVlcnkYAiABKAlSBXF1ZXJ5ElIKCG1ldGFkYXRhGAMgAygLMjYuZGFwci5wcm90by5ydW50aW1lLnYxLlF1ZXJ5U3RhdGVSZXF1ZXN0Lk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use queryStateItemDescriptor instead')
const QueryStateItem$json = const {
  '1': 'QueryStateItem',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'etag', '3': 3, '4': 1, '5': 9, '10': 'etag'},
    const {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `QueryStateItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryStateItemDescriptor = $convert.base64Decode(
    'Cg5RdWVyeVN0YXRlSXRlbRIQCgNrZXkYASABKAlSA2tleRISCgRkYXRhGAIgASgMUgRkYXRhEhIKBGV0YWcYAyABKAlSBGV0YWcSFAoFZXJyb3IYBCABKAlSBWVycm9y');
@$core.Deprecated('Use queryStateResponseDescriptor instead')
const QueryStateResponse$json = const {
  '1': 'QueryStateResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.QueryStateItem',
      '10': 'results'
    },
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.QueryStateResponse.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [QueryStateResponse_MetadataEntry$json],
};

@$core.Deprecated('Use queryStateResponseDescriptor instead')
const QueryStateResponse_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `QueryStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryStateResponseDescriptor = $convert.base64Decode(
    'ChJRdWVyeVN0YXRlUmVzcG9uc2USPwoHcmVzdWx0cxgBIAMoCzIlLmRhcHIucHJvdG8ucnVudGltZS52MS5RdWVyeVN0YXRlSXRlbVIHcmVzdWx0cxIUCgV0b2tlbhgCIAEoCVIFdG9rZW4SUwoIbWV0YWRhdGEYAyADKAsyNy5kYXByLnByb3RvLnJ1bnRpbWUudjEuUXVlcnlTdGF0ZVJlc3BvbnNlLk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use publishEventRequestDescriptor instead')
const PublishEventRequest$json = const {
  '1': 'PublishEventRequest',
  '2': const [
    const {'1': 'pubsub_name', '3': 1, '4': 1, '5': 9, '10': 'pubsubName'},
    const {'1': 'topic', '3': 2, '4': 1, '5': 9, '10': 'topic'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    const {
      '1': 'data_content_type',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'dataContentType'
    },
    const {
      '1': 'metadata',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.PublishEventRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [PublishEventRequest_MetadataEntry$json],
};

@$core.Deprecated('Use publishEventRequestDescriptor instead')
const PublishEventRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `PublishEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishEventRequestDescriptor = $convert.base64Decode(
    'ChNQdWJsaXNoRXZlbnRSZXF1ZXN0Eh8KC3B1YnN1Yl9uYW1lGAEgASgJUgpwdWJzdWJOYW1lEhQKBXRvcGljGAIgASgJUgV0b3BpYxISCgRkYXRhGAMgASgMUgRkYXRhEioKEWRhdGFfY29udGVudF90eXBlGAQgASgJUg9kYXRhQ29udGVudFR5cGUSVAoIbWV0YWRhdGEYBSADKAsyOC5kYXByLnByb3RvLnJ1bnRpbWUudjEuUHVibGlzaEV2ZW50UmVxdWVzdC5NZXRhZGF0YUVudHJ5UghtZXRhZGF0YRo7Cg1NZXRhZGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use invokeBindingRequestDescriptor instead')
const InvokeBindingRequest$json = const {
  '1': 'InvokeBindingRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.InvokeBindingRequest.MetadataEntry',
      '10': 'metadata'
    },
    const {'1': 'operation', '3': 4, '4': 1, '5': 9, '10': 'operation'},
  ],
  '3': const [InvokeBindingRequest_MetadataEntry$json],
};

@$core.Deprecated('Use invokeBindingRequestDescriptor instead')
const InvokeBindingRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `InvokeBindingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeBindingRequestDescriptor = $convert.base64Decode(
    'ChRJbnZva2VCaW5kaW5nUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhIKBGRhdGEYAiABKAxSBGRhdGESVQoIbWV0YWRhdGEYAyADKAsyOS5kYXByLnByb3RvLnJ1bnRpbWUudjEuSW52b2tlQmluZGluZ1JlcXVlc3QuTWV0YWRhdGFFbnRyeVIIbWV0YWRhdGESHAoJb3BlcmF0aW9uGAQgASgJUglvcGVyYXRpb24aOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use invokeBindingResponseDescriptor instead')
const InvokeBindingResponse$json = const {
  '1': 'InvokeBindingResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    const {
      '1': 'metadata',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.InvokeBindingResponse.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [InvokeBindingResponse_MetadataEntry$json],
};

@$core.Deprecated('Use invokeBindingResponseDescriptor instead')
const InvokeBindingResponse_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `InvokeBindingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeBindingResponseDescriptor = $convert.base64Decode(
    'ChVJbnZva2VCaW5kaW5nUmVzcG9uc2USEgoEZGF0YRgBIAEoDFIEZGF0YRJWCghtZXRhZGF0YRgCIAMoCzI6LmRhcHIucHJvdG8ucnVudGltZS52MS5JbnZva2VCaW5kaW5nUmVzcG9uc2UuTWV0YWRhdGFFbnRyeVIIbWV0YWRhdGEaOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use getSecretRequestDescriptor instead')
const GetSecretRequest$json = const {
  '1': 'GetSecretRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetSecretRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [GetSecretRequest_MetadataEntry$json],
};

@$core.Deprecated('Use getSecretRequestDescriptor instead')
const GetSecretRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetSecretRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSecretRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTZWNyZXRSZXF1ZXN0Eh0KCnN0b3JlX25hbWUYASABKAlSCXN0b3JlTmFtZRIQCgNrZXkYAiABKAlSA2tleRJRCghtZXRhZGF0YRgDIAMoCzI1LmRhcHIucHJvdG8ucnVudGltZS52MS5HZXRTZWNyZXRSZXF1ZXN0Lk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use getSecretResponseDescriptor instead')
const GetSecretResponse$json = const {
  '1': 'GetSecretResponse',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetSecretResponse.DataEntry',
      '10': 'data'
    },
  ],
  '3': const [GetSecretResponse_DataEntry$json],
};

@$core.Deprecated('Use getSecretResponseDescriptor instead')
const GetSecretResponse_DataEntry$json = const {
  '1': 'DataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetSecretResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSecretResponseDescriptor = $convert.base64Decode(
    'ChFHZXRTZWNyZXRSZXNwb25zZRJGCgRkYXRhGAEgAygLMjIuZGFwci5wcm90by5ydW50aW1lLnYxLkdldFNlY3JldFJlc3BvbnNlLkRhdGFFbnRyeVIEZGF0YRo3CglEYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use getBulkSecretRequestDescriptor instead')
const GetBulkSecretRequest$json = const {
  '1': 'GetBulkSecretRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {
      '1': 'metadata',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetBulkSecretRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [GetBulkSecretRequest_MetadataEntry$json],
};

@$core.Deprecated('Use getBulkSecretRequestDescriptor instead')
const GetBulkSecretRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetBulkSecretRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBulkSecretRequestDescriptor = $convert.base64Decode(
    'ChRHZXRCdWxrU2VjcmV0UmVxdWVzdBIdCgpzdG9yZV9uYW1lGAEgASgJUglzdG9yZU5hbWUSVQoIbWV0YWRhdGEYAiADKAsyOS5kYXByLnByb3RvLnJ1bnRpbWUudjEuR2V0QnVsa1NlY3JldFJlcXVlc3QuTWV0YWRhdGFFbnRyeVIIbWV0YWRhdGEaOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use secretResponseDescriptor instead')
const SecretResponse$json = const {
  '1': 'SecretResponse',
  '2': const [
    const {
      '1': 'secrets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.SecretResponse.SecretsEntry',
      '10': 'secrets'
    },
  ],
  '3': const [SecretResponse_SecretsEntry$json],
};

@$core.Deprecated('Use secretResponseDescriptor instead')
const SecretResponse_SecretsEntry$json = const {
  '1': 'SecretsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SecretResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretResponseDescriptor = $convert.base64Decode(
    'Cg5TZWNyZXRSZXNwb25zZRJMCgdzZWNyZXRzGAEgAygLMjIuZGFwci5wcm90by5ydW50aW1lLnYxLlNlY3JldFJlc3BvbnNlLlNlY3JldHNFbnRyeVIHc2VjcmV0cxo6CgxTZWNyZXRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use getBulkSecretResponseDescriptor instead')
const GetBulkSecretResponse$json = const {
  '1': 'GetBulkSecretResponse',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetBulkSecretResponse.DataEntry',
      '10': 'data'
    },
  ],
  '3': const [GetBulkSecretResponse_DataEntry$json],
};

@$core.Deprecated('Use getBulkSecretResponseDescriptor instead')
const GetBulkSecretResponse_DataEntry$json = const {
  '1': 'DataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.SecretResponse',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetBulkSecretResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBulkSecretResponseDescriptor = $convert.base64Decode(
    'ChVHZXRCdWxrU2VjcmV0UmVzcG9uc2USSgoEZGF0YRgBIAMoCzI2LmRhcHIucHJvdG8ucnVudGltZS52MS5HZXRCdWxrU2VjcmV0UmVzcG9uc2UuRGF0YUVudHJ5UgRkYXRhGl4KCURhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRI7CgV2YWx1ZRgCIAEoCzIlLmRhcHIucHJvdG8ucnVudGltZS52MS5TZWNyZXRSZXNwb25zZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use transactionalStateOperationDescriptor instead')
const TransactionalStateOperation$json = const {
  '1': 'TransactionalStateOperation',
  '2': const [
    const {'1': 'operationType', '3': 1, '4': 1, '5': 9, '10': 'operationType'},
    const {
      '1': 'request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.common.v1.StateItem',
      '10': 'request'
    },
  ],
};

/// Descriptor for `TransactionalStateOperation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionalStateOperationDescriptor =
    $convert.base64Decode(
        'ChtUcmFuc2FjdGlvbmFsU3RhdGVPcGVyYXRpb24SJAoNb3BlcmF0aW9uVHlwZRgBIAEoCVINb3BlcmF0aW9uVHlwZRI5CgdyZXF1ZXN0GAIgASgLMh8uZGFwci5wcm90by5jb21tb24udjEuU3RhdGVJdGVtUgdyZXF1ZXN0');
@$core.Deprecated('Use executeStateTransactionRequestDescriptor instead')
const ExecuteStateTransactionRequest$json = const {
  '1': 'ExecuteStateTransactionRequest',
  '2': const [
    const {'1': 'storeName', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {
      '1': 'operations',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.TransactionalStateOperation',
      '10': 'operations'
    },
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.dapr.proto.runtime.v1.ExecuteStateTransactionRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [ExecuteStateTransactionRequest_MetadataEntry$json],
};

@$core.Deprecated('Use executeStateTransactionRequestDescriptor instead')
const ExecuteStateTransactionRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ExecuteStateTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeStateTransactionRequestDescriptor =
    $convert.base64Decode(
        'Ch5FeGVjdXRlU3RhdGVUcmFuc2FjdGlvblJlcXVlc3QSHAoJc3RvcmVOYW1lGAEgASgJUglzdG9yZU5hbWUSUgoKb3BlcmF0aW9ucxgCIAMoCzIyLmRhcHIucHJvdG8ucnVudGltZS52MS5UcmFuc2FjdGlvbmFsU3RhdGVPcGVyYXRpb25SCm9wZXJhdGlvbnMSXwoIbWV0YWRhdGEYAyADKAsyQy5kYXByLnByb3RvLnJ1bnRpbWUudjEuRXhlY3V0ZVN0YXRlVHJhbnNhY3Rpb25SZXF1ZXN0Lk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use registerActorTimerRequestDescriptor instead')
const RegisterActorTimerRequest$json = const {
  '1': 'RegisterActorTimerRequest',
  '2': const [
    const {'1': 'actor_type', '3': 1, '4': 1, '5': 9, '10': 'actorType'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 9, '10': 'actorId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'due_time', '3': 4, '4': 1, '5': 9, '10': 'dueTime'},
    const {'1': 'period', '3': 5, '4': 1, '5': 9, '10': 'period'},
    const {'1': 'callback', '3': 6, '4': 1, '5': 9, '10': 'callback'},
    const {'1': 'data', '3': 7, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'ttl', '3': 8, '4': 1, '5': 9, '10': 'ttl'},
  ],
};

/// Descriptor for `RegisterActorTimerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerActorTimerRequestDescriptor =
    $convert.base64Decode(
        'ChlSZWdpc3RlckFjdG9yVGltZXJSZXF1ZXN0Eh0KCmFjdG9yX3R5cGUYASABKAlSCWFjdG9yVHlwZRIZCghhY3Rvcl9pZBgCIAEoCVIHYWN0b3JJZBISCgRuYW1lGAMgASgJUgRuYW1lEhkKCGR1ZV90aW1lGAQgASgJUgdkdWVUaW1lEhYKBnBlcmlvZBgFIAEoCVIGcGVyaW9kEhoKCGNhbGxiYWNrGAYgASgJUghjYWxsYmFjaxISCgRkYXRhGAcgASgMUgRkYXRhEhAKA3R0bBgIIAEoCVIDdHRs');
@$core.Deprecated('Use unregisterActorTimerRequestDescriptor instead')
const UnregisterActorTimerRequest$json = const {
  '1': 'UnregisterActorTimerRequest',
  '2': const [
    const {'1': 'actor_type', '3': 1, '4': 1, '5': 9, '10': 'actorType'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 9, '10': 'actorId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UnregisterActorTimerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unregisterActorTimerRequestDescriptor =
    $convert.base64Decode(
        'ChtVbnJlZ2lzdGVyQWN0b3JUaW1lclJlcXVlc3QSHQoKYWN0b3JfdHlwZRgBIAEoCVIJYWN0b3JUeXBlEhkKCGFjdG9yX2lkGAIgASgJUgdhY3RvcklkEhIKBG5hbWUYAyABKAlSBG5hbWU=');
@$core.Deprecated('Use registerActorReminderRequestDescriptor instead')
const RegisterActorReminderRequest$json = const {
  '1': 'RegisterActorReminderRequest',
  '2': const [
    const {'1': 'actor_type', '3': 1, '4': 1, '5': 9, '10': 'actorType'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 9, '10': 'actorId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'due_time', '3': 4, '4': 1, '5': 9, '10': 'dueTime'},
    const {'1': 'period', '3': 5, '4': 1, '5': 9, '10': 'period'},
    const {'1': 'data', '3': 6, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'ttl', '3': 7, '4': 1, '5': 9, '10': 'ttl'},
  ],
};

/// Descriptor for `RegisterActorReminderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerActorReminderRequestDescriptor =
    $convert.base64Decode(
        'ChxSZWdpc3RlckFjdG9yUmVtaW5kZXJSZXF1ZXN0Eh0KCmFjdG9yX3R5cGUYASABKAlSCWFjdG9yVHlwZRIZCghhY3Rvcl9pZBgCIAEoCVIHYWN0b3JJZBISCgRuYW1lGAMgASgJUgRuYW1lEhkKCGR1ZV90aW1lGAQgASgJUgdkdWVUaW1lEhYKBnBlcmlvZBgFIAEoCVIGcGVyaW9kEhIKBGRhdGEYBiABKAxSBGRhdGESEAoDdHRsGAcgASgJUgN0dGw=');
@$core.Deprecated('Use unregisterActorReminderRequestDescriptor instead')
const UnregisterActorReminderRequest$json = const {
  '1': 'UnregisterActorReminderRequest',
  '2': const [
    const {'1': 'actor_type', '3': 1, '4': 1, '5': 9, '10': 'actorType'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 9, '10': 'actorId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UnregisterActorReminderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unregisterActorReminderRequestDescriptor =
    $convert.base64Decode(
        'Ch5VbnJlZ2lzdGVyQWN0b3JSZW1pbmRlclJlcXVlc3QSHQoKYWN0b3JfdHlwZRgBIAEoCVIJYWN0b3JUeXBlEhkKCGFjdG9yX2lkGAIgASgJUgdhY3RvcklkEhIKBG5hbWUYAyABKAlSBG5hbWU=');
@$core.Deprecated('Use getActorStateRequestDescriptor instead')
const GetActorStateRequest$json = const {
  '1': 'GetActorStateRequest',
  '2': const [
    const {'1': 'actor_type', '3': 1, '4': 1, '5': 9, '10': 'actorType'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 9, '10': 'actorId'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GetActorStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getActorStateRequestDescriptor = $convert.base64Decode(
    'ChRHZXRBY3RvclN0YXRlUmVxdWVzdBIdCgphY3Rvcl90eXBlGAEgASgJUglhY3RvclR5cGUSGQoIYWN0b3JfaWQYAiABKAlSB2FjdG9ySWQSEAoDa2V5GAMgASgJUgNrZXk=');
@$core.Deprecated('Use getActorStateResponseDescriptor instead')
const GetActorStateResponse$json = const {
  '1': 'GetActorStateResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `GetActorStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getActorStateResponseDescriptor =
    $convert.base64Decode(
        'ChVHZXRBY3RvclN0YXRlUmVzcG9uc2USEgoEZGF0YRgBIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use executeActorStateTransactionRequestDescriptor instead')
const ExecuteActorStateTransactionRequest$json = const {
  '1': 'ExecuteActorStateTransactionRequest',
  '2': const [
    const {'1': 'actor_type', '3': 1, '4': 1, '5': 9, '10': 'actorType'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 9, '10': 'actorId'},
    const {
      '1': 'operations',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.TransactionalActorStateOperation',
      '10': 'operations'
    },
  ],
};

/// Descriptor for `ExecuteActorStateTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeActorStateTransactionRequestDescriptor =
    $convert.base64Decode(
        'CiNFeGVjdXRlQWN0b3JTdGF0ZVRyYW5zYWN0aW9uUmVxdWVzdBIdCgphY3Rvcl90eXBlGAEgASgJUglhY3RvclR5cGUSGQoIYWN0b3JfaWQYAiABKAlSB2FjdG9ySWQSVwoKb3BlcmF0aW9ucxgDIAMoCzI3LmRhcHIucHJvdG8ucnVudGltZS52MS5UcmFuc2FjdGlvbmFsQWN0b3JTdGF0ZU9wZXJhdGlvblIKb3BlcmF0aW9ucw==');
@$core.Deprecated('Use transactionalActorStateOperationDescriptor instead')
const TransactionalActorStateOperation$json = const {
  '1': 'TransactionalActorStateOperation',
  '2': const [
    const {'1': 'operationType', '3': 1, '4': 1, '5': 9, '10': 'operationType'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'value'
    },
  ],
};

/// Descriptor for `TransactionalActorStateOperation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionalActorStateOperationDescriptor =
    $convert.base64Decode(
        'CiBUcmFuc2FjdGlvbmFsQWN0b3JTdGF0ZU9wZXJhdGlvbhIkCg1vcGVyYXRpb25UeXBlGAEgASgJUg1vcGVyYXRpb25UeXBlEhAKA2tleRgCIAEoCVIDa2V5EioKBXZhbHVlGAMgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIFdmFsdWU=');
@$core.Deprecated('Use invokeActorRequestDescriptor instead')
const InvokeActorRequest$json = const {
  '1': 'InvokeActorRequest',
  '2': const [
    const {'1': 'actor_type', '3': 1, '4': 1, '5': 9, '10': 'actorType'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 9, '10': 'actorId'},
    const {'1': 'method', '3': 3, '4': 1, '5': 9, '10': 'method'},
    const {'1': 'data', '3': 4, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `InvokeActorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeActorRequestDescriptor = $convert.base64Decode(
    'ChJJbnZva2VBY3RvclJlcXVlc3QSHQoKYWN0b3JfdHlwZRgBIAEoCVIJYWN0b3JUeXBlEhkKCGFjdG9yX2lkGAIgASgJUgdhY3RvcklkEhYKBm1ldGhvZBgDIAEoCVIGbWV0aG9kEhIKBGRhdGEYBCABKAxSBGRhdGE=');
@$core.Deprecated('Use invokeActorResponseDescriptor instead')
const InvokeActorResponse$json = const {
  '1': 'InvokeActorResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `InvokeActorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeActorResponseDescriptor = $convert
    .base64Decode('ChNJbnZva2VBY3RvclJlc3BvbnNlEhIKBGRhdGEYASABKAxSBGRhdGE=');
@$core.Deprecated('Use getMetadataResponseDescriptor instead')
const GetMetadataResponse$json = const {
  '1': 'GetMetadataResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'active_actors_count',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.ActiveActorsCount',
      '10': 'activeActorsCount'
    },
    const {
      '1': 'registered_components',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.RegisteredComponents',
      '10': 'registeredComponents'
    },
    const {
      '1': 'extended_metadata',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetMetadataResponse.ExtendedMetadataEntry',
      '10': 'extendedMetadata'
    },
  ],
  '3': const [GetMetadataResponse_ExtendedMetadataEntry$json],
};

@$core.Deprecated('Use getMetadataResponseDescriptor instead')
const GetMetadataResponse_ExtendedMetadataEntry$json = const {
  '1': 'ExtendedMetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetMetadataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMetadataResponseDescriptor = $convert.base64Decode(
    'ChNHZXRNZXRhZGF0YVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBJYChNhY3RpdmVfYWN0b3JzX2NvdW50GAIgAygLMiguZGFwci5wcm90by5ydW50aW1lLnYxLkFjdGl2ZUFjdG9yc0NvdW50UhFhY3RpdmVBY3RvcnNDb3VudBJgChVyZWdpc3RlcmVkX2NvbXBvbmVudHMYAyADKAsyKy5kYXByLnByb3RvLnJ1bnRpbWUudjEuUmVnaXN0ZXJlZENvbXBvbmVudHNSFHJlZ2lzdGVyZWRDb21wb25lbnRzEm0KEWV4dGVuZGVkX21ldGFkYXRhGAQgAygLMkAuZGFwci5wcm90by5ydW50aW1lLnYxLkdldE1ldGFkYXRhUmVzcG9uc2UuRXh0ZW5kZWRNZXRhZGF0YUVudHJ5UhBleHRlbmRlZE1ldGFkYXRhGkMKFUV4dGVuZGVkTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use activeActorsCountDescriptor instead')
const ActiveActorsCount$json = const {
  '1': 'ActiveActorsCount',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ActiveActorsCount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activeActorsCountDescriptor = $convert.base64Decode(
    'ChFBY3RpdmVBY3RvcnNDb3VudBISCgR0eXBlGAEgASgJUgR0eXBlEhQKBWNvdW50GAIgASgFUgVjb3VudA==');
@$core.Deprecated('Use registeredComponentsDescriptor instead')
const RegisteredComponents$json = const {
  '1': 'RegisteredComponents',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `RegisteredComponents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registeredComponentsDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RlcmVkQ29tcG9uZW50cxISCgRuYW1lGAEgASgJUgRuYW1lEhIKBHR5cGUYAiABKAlSBHR5cGUSGAoHdmVyc2lvbhgDIAEoCVIHdmVyc2lvbg==');
@$core.Deprecated('Use setMetadataRequestDescriptor instead')
const SetMetadataRequest$json = const {
  '1': 'SetMetadataRequest',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SetMetadataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setMetadataRequestDescriptor = $convert.base64Decode(
    'ChJTZXRNZXRhZGF0YVJlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVl');
@$core.Deprecated('Use getConfigurationRequestDescriptor instead')
const GetConfigurationRequest$json = const {
  '1': 'GetConfigurationRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.GetConfigurationRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [GetConfigurationRequest_MetadataEntry$json],
};

@$core.Deprecated('Use getConfigurationRequestDescriptor instead')
const GetConfigurationRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetConfigurationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfigurationRequestDescriptor =
    $convert.base64Decode(
        'ChdHZXRDb25maWd1cmF0aW9uUmVxdWVzdBIdCgpzdG9yZV9uYW1lGAEgASgJUglzdG9yZU5hbWUSEgoEa2V5cxgCIAMoCVIEa2V5cxJYCghtZXRhZGF0YRgDIAMoCzI8LmRhcHIucHJvdG8ucnVudGltZS52MS5HZXRDb25maWd1cmF0aW9uUmVxdWVzdC5NZXRhZGF0YUVudHJ5UghtZXRhZGF0YRo7Cg1NZXRhZGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use getConfigurationResponseDescriptor instead')
const GetConfigurationResponse$json = const {
  '1': 'GetConfigurationResponse',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.common.v1.ConfigurationItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetConfigurationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfigurationResponseDescriptor =
    $convert.base64Decode(
        'ChhHZXRDb25maWd1cmF0aW9uUmVzcG9uc2USPQoFaXRlbXMYASADKAsyJy5kYXByLnByb3RvLmNvbW1vbi52MS5Db25maWd1cmF0aW9uSXRlbVIFaXRlbXM=');
@$core.Deprecated('Use subscribeConfigurationRequestDescriptor instead')
const SubscribeConfigurationRequest$json = const {
  '1': 'SubscribeConfigurationRequest',
  '2': const [
    const {'1': 'store_name', '3': 1, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'keys', '3': 2, '4': 3, '5': 9, '10': 'keys'},
    const {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.runtime.v1.SubscribeConfigurationRequest.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [SubscribeConfigurationRequest_MetadataEntry$json],
};

@$core.Deprecated('Use subscribeConfigurationRequestDescriptor instead')
const SubscribeConfigurationRequest_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SubscribeConfigurationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeConfigurationRequestDescriptor =
    $convert.base64Decode(
        'Ch1TdWJzY3JpYmVDb25maWd1cmF0aW9uUmVxdWVzdBIdCgpzdG9yZV9uYW1lGAEgASgJUglzdG9yZU5hbWUSEgoEa2V5cxgCIAMoCVIEa2V5cxJeCghtZXRhZGF0YRgDIAMoCzJCLmRhcHIucHJvdG8ucnVudGltZS52MS5TdWJzY3JpYmVDb25maWd1cmF0aW9uUmVxdWVzdC5NZXRhZGF0YUVudHJ5UghtZXRhZGF0YRo7Cg1NZXRhZGF0YUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use subscribeConfigurationResponseDescriptor instead')
const SubscribeConfigurationResponse$json = const {
  '1': 'SubscribeConfigurationResponse',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.common.v1.ConfigurationItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `SubscribeConfigurationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeConfigurationResponseDescriptor =
    $convert.base64Decode(
        'Ch5TdWJzY3JpYmVDb25maWd1cmF0aW9uUmVzcG9uc2USPQoFaXRlbXMYASADKAsyJy5kYXByLnByb3RvLmNvbW1vbi52MS5Db25maWd1cmF0aW9uSXRlbVIFaXRlbXM=');
