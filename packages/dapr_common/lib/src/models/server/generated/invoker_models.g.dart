// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoker_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvokerCallbackContent _$$_InvokerCallbackContentFromJson(
        Map<String, dynamic> json) =>
    _$_InvokerCallbackContent(
      body: json['body'] as String?,
      query: (json['query'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      metadata: json['metadata'] == null
          ? null
          : InvokerCallbackMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InvokerCallbackContentToJson(
        _$_InvokerCallbackContent instance) =>
    <String, dynamic>{
      'body': instance.body,
      'query': instance.query,
      'metadata': instance.metadata,
    };

_$_InvokerCallbackMetadata _$$_InvokerCallbackMetadataFromJson(
        Map<String, dynamic> json) =>
    _$_InvokerCallbackMetadata(
      contentType: json['contentType'] as String?,
    );

Map<String, dynamic> _$$_InvokerCallbackMetadataToJson(
        _$_InvokerCallbackMetadata instance) =>
    <String, dynamic>{
      'contentType': instance.contentType,
    };

_$_InvokerCallbackOptions _$$_InvokerCallbackOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_InvokerCallbackOptions(
      method: $enumDecode(_$HttpMethodEnumMap, json['method']),
    );

Map<String, dynamic> _$$_InvokerCallbackOptionsToJson(
        _$_InvokerCallbackOptions instance) =>
    <String, dynamic>{
      'method': _$HttpMethodEnumMap[instance.method],
    };

const _$HttpMethodEnumMap = {
  HttpMethod.get: 'get',
  HttpMethod.put: 'put',
  HttpMethod.post: 'post',
  HttpMethod.delete: 'delete',
};
