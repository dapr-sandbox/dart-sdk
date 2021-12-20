// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveStateItem _$$_SaveStateItemFromJson(Map<String, dynamic> json) =>
    _$_SaveStateItem(
      key: json['key'] as String,
      value: json['value'],
      etag: json['etag'] as String?,
    );

Map<String, dynamic> _$$_SaveStateItemToJson(_$_SaveStateItem instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'etag': instance.etag,
    };

_$_BulkStateItem _$$_BulkStateItemFromJson(Map<String, dynamic> json) =>
    _$_BulkStateItem(
      key: json['key'] as String,
      data: json['data'],
      etag: json['etag'] as String?,
    );

Map<String, dynamic> _$$_BulkStateItemToJson(_$_BulkStateItem instance) =>
    <String, dynamic>{
      'key': instance.key,
      'data': instance.data,
      'etag': instance.etag,
    };

_$_StateOptions _$$_StateOptionsFromJson(Map<String, dynamic> json) =>
    _$_StateOptions(
      concurrency:
          $enumDecodeNullable(_$ConcurrencyEnumMap, json['concurrency']),
      consistency:
          $enumDecodeNullable(_$ConsistencyEnumMap, json['consistency']),
    );

Map<String, dynamic> _$$_StateOptionsToJson(_$_StateOptions instance) =>
    <String, dynamic>{
      'concurrency': _$ConcurrencyEnumMap[instance.concurrency],
      'consistency': _$ConsistencyEnumMap[instance.consistency],
    };

const _$ConcurrencyEnumMap = {
  Concurrency.unspecified: 'unspecified',
  Concurrency.firstWrite: 'firstWrite',
  Concurrency.lastWrite: 'lastWrite',
};

const _$ConsistencyEnumMap = {
  Consistency.unspecified: 'unspecified',
  Consistency.eventual: 'eventual',
  Consistency.strong: 'strong',
};

_$_Etag _$$_EtagFromJson(Map<String, dynamic> json) => _$_Etag(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_EtagToJson(_$_Etag instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_StateOperation _$$_StateOperationFromJson(Map<String, dynamic> json) =>
    _$_StateOperation(
      operation: json['operation'] as String,
      request: StateOperationRequest.fromJson(
          json['request'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateOperationToJson(_$_StateOperation instance) =>
    <String, dynamic>{
      'operation': instance.operation,
      'request': instance.request,
    };

_$_StateOperationRequest _$$_StateOperationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_StateOperationRequest(
      key: json['key'] as String,
      value: json['value'] as String?,
      etag: json['etag'] == null
          ? null
          : Etag.fromJson(json['etag'] as Map<String, dynamic>),
      metaData: json['metaData'] as Map<String, dynamic>?,
      options: json['options'] == null
          ? null
          : StateOptions.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateOperationRequestToJson(
        _$_StateOperationRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'etag': instance.etag,
      'metaData': instance.metaData,
      'options': instance.options,
    };
