///
//  Generated code. Do not modify.
//  source: dapr/proto/common/v1/common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use hTTPExtensionDescriptor instead')
const HTTPExtension$json = const {
  '1': 'HTTPExtension',
  '2': const [
    const {
      '1': 'verb',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.dapr.proto.common.v1.HTTPExtension.Verb',
      '10': 'verb'
    },
    const {'1': 'querystring', '3': 2, '4': 1, '5': 9, '10': 'querystring'},
  ],
  '4': const [HTTPExtension_Verb$json],
};

@$core.Deprecated('Use hTTPExtensionDescriptor instead')
const HTTPExtension_Verb$json = const {
  '1': 'Verb',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'GET', '2': 1},
    const {'1': 'HEAD', '2': 2},
    const {'1': 'POST', '2': 3},
    const {'1': 'PUT', '2': 4},
    const {'1': 'DELETE', '2': 5},
    const {'1': 'CONNECT', '2': 6},
    const {'1': 'OPTIONS', '2': 7},
    const {'1': 'TRACE', '2': 8},
    const {'1': 'PATCH', '2': 9},
  ],
};

/// Descriptor for `HTTPExtension`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPExtensionDescriptor = $convert.base64Decode(
    'Cg1IVFRQRXh0ZW5zaW9uEjwKBHZlcmIYASABKA4yKC5kYXByLnByb3RvLmNvbW1vbi52MS5IVFRQRXh0ZW5zaW9uLlZlcmJSBHZlcmISIAoLcXVlcnlzdHJpbmcYAiABKAlSC3F1ZXJ5c3RyaW5nInIKBFZlcmISCAoETk9ORRAAEgcKA0dFVBABEggKBEhFQUQQAhIICgRQT1NUEAMSBwoDUFVUEAQSCgoGREVMRVRFEAUSCwoHQ09OTkVDVBAGEgsKB09QVElPTlMQBxIJCgVUUkFDRRAIEgkKBVBBVENIEAk=');
@$core.Deprecated('Use invokeRequestDescriptor instead')
const InvokeRequest$json = const {
  '1': 'InvokeRequest',
  '2': const [
    const {'1': 'method', '3': 1, '4': 1, '5': 9, '10': 'method'},
    const {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'data'
    },
    const {'1': 'content_type', '3': 3, '4': 1, '5': 9, '10': 'contentType'},
    const {
      '1': 'http_extension',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.common.v1.HTTPExtension',
      '10': 'httpExtension'
    },
  ],
};

/// Descriptor for `InvokeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeRequestDescriptor = $convert.base64Decode(
    'Cg1JbnZva2VSZXF1ZXN0EhYKBm1ldGhvZBgBIAEoCVIGbWV0aG9kEigKBGRhdGEYAiABKAsyFC5nb29nbGUucHJvdG9idWYuQW55UgRkYXRhEiEKDGNvbnRlbnRfdHlwZRgDIAEoCVILY29udGVudFR5cGUSSgoOaHR0cF9leHRlbnNpb24YBCABKAsyIy5kYXByLnByb3RvLmNvbW1vbi52MS5IVFRQRXh0ZW5zaW9uUg1odHRwRXh0ZW5zaW9u');
@$core.Deprecated('Use invokeResponseDescriptor instead')
const InvokeResponse$json = const {
  '1': 'InvokeResponse',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'data'
    },
    const {'1': 'content_type', '3': 2, '4': 1, '5': 9, '10': 'contentType'},
  ],
};

/// Descriptor for `InvokeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invokeResponseDescriptor = $convert.base64Decode(
    'Cg5JbnZva2VSZXNwb25zZRIoCgRkYXRhGAEgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIEZGF0YRIhCgxjb250ZW50X3R5cGUYAiABKAlSC2NvbnRlbnRUeXBl');
@$core.Deprecated('Use stateItemDescriptor instead')
const StateItem$json = const {
  '1': 'StateItem',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
    const {
      '1': 'etag',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.common.v1.Etag',
      '10': 'etag'
    },
    const {
      '1': 'metadata',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.common.v1.StateItem.MetadataEntry',
      '10': 'metadata'
    },
    const {
      '1': 'options',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.dapr.proto.common.v1.StateOptions',
      '10': 'options'
    },
  ],
  '3': const [StateItem_MetadataEntry$json],
};

@$core.Deprecated('Use stateItemDescriptor instead')
const StateItem_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `StateItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateItemDescriptor = $convert.base64Decode(
    'CglTdGF0ZUl0ZW0SEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlEi4KBGV0YWcYAyABKAsyGi5kYXByLnByb3RvLmNvbW1vbi52MS5FdGFnUgRldGFnEkkKCG1ldGFkYXRhGAQgAygLMi0uZGFwci5wcm90by5jb21tb24udjEuU3RhdGVJdGVtLk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhEjwKB29wdGlvbnMYBSABKAsyIi5kYXByLnByb3RvLmNvbW1vbi52MS5TdGF0ZU9wdGlvbnNSB29wdGlvbnMaOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use etagDescriptor instead')
const Etag$json = const {
  '1': 'Etag',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `Etag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List etagDescriptor =
    $convert.base64Decode('CgRFdGFnEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use stateOptionsDescriptor instead')
const StateOptions$json = const {
  '1': 'StateOptions',
  '2': const [
    const {
      '1': 'concurrency',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.dapr.proto.common.v1.StateOptions.StateConcurrency',
      '10': 'concurrency'
    },
    const {
      '1': 'consistency',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.dapr.proto.common.v1.StateOptions.StateConsistency',
      '10': 'consistency'
    },
  ],
  '4': const [
    StateOptions_StateConcurrency$json,
    StateOptions_StateConsistency$json
  ],
};

@$core.Deprecated('Use stateOptionsDescriptor instead')
const StateOptions_StateConcurrency$json = const {
  '1': 'StateConcurrency',
  '2': const [
    const {'1': 'CONCURRENCY_UNSPECIFIED', '2': 0},
    const {'1': 'CONCURRENCY_FIRST_WRITE', '2': 1},
    const {'1': 'CONCURRENCY_LAST_WRITE', '2': 2},
  ],
};

@$core.Deprecated('Use stateOptionsDescriptor instead')
const StateOptions_StateConsistency$json = const {
  '1': 'StateConsistency',
  '2': const [
    const {'1': 'CONSISTENCY_UNSPECIFIED', '2': 0},
    const {'1': 'CONSISTENCY_EVENTUAL', '2': 1},
    const {'1': 'CONSISTENCY_STRONG', '2': 2},
  ],
};

/// Descriptor for `StateOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateOptionsDescriptor = $convert.base64Decode(
    'CgxTdGF0ZU9wdGlvbnMSVQoLY29uY3VycmVuY3kYASABKA4yMy5kYXByLnByb3RvLmNvbW1vbi52MS5TdGF0ZU9wdGlvbnMuU3RhdGVDb25jdXJyZW5jeVILY29uY3VycmVuY3kSVQoLY29uc2lzdGVuY3kYAiABKA4yMy5kYXByLnByb3RvLmNvbW1vbi52MS5TdGF0ZU9wdGlvbnMuU3RhdGVDb25zaXN0ZW5jeVILY29uc2lzdGVuY3kiaAoQU3RhdGVDb25jdXJyZW5jeRIbChdDT05DVVJSRU5DWV9VTlNQRUNJRklFRBAAEhsKF0NPTkNVUlJFTkNZX0ZJUlNUX1dSSVRFEAESGgoWQ09OQ1VSUkVOQ1lfTEFTVF9XUklURRACImEKEFN0YXRlQ29uc2lzdGVuY3kSGwoXQ09OU0lTVEVOQ1lfVU5TUEVDSUZJRUQQABIYChRDT05TSVNURU5DWV9FVkVOVFVBTBABEhYKEkNPTlNJU1RFTkNZX1NUUk9ORxAC');
@$core.Deprecated('Use configurationItemDescriptor instead')
const ConfigurationItem$json = const {
  '1': 'ConfigurationItem',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {
      '1': 'metadata',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.dapr.proto.common.v1.ConfigurationItem.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': const [ConfigurationItem_MetadataEntry$json],
};

@$core.Deprecated('Use configurationItemDescriptor instead')
const ConfigurationItem_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ConfigurationItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationItemDescriptor = $convert.base64Decode(
    'ChFDb25maWd1cmF0aW9uSXRlbRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUSGAoHdmVyc2lvbhgDIAEoCVIHdmVyc2lvbhJRCghtZXRhZGF0YRgEIAMoCzI1LmRhcHIucHJvdG8uY29tbW9uLnYxLkNvbmZpZ3VyYXRpb25JdGVtLk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
