// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bindings_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutputBindingEvent _$$_OutputBindingEventFromJson(
        Map<String, dynamic> json) =>
    _$_OutputBindingEvent(
      data: json['data'] as String,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          {},
      operation: json['operation'] as String,
    );

Map<String, dynamic> _$$_OutputBindingEventToJson(
        _$_OutputBindingEvent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metadata': instance.metadata,
      'operation': instance.operation,
    };

_$_OutputBindingEventResponse _$$_OutputBindingEventResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OutputBindingEventResponse(
      data: json['data'] as String,
      metadata: Map<String, String>.from(json['metadata'] as Map),
    );

Map<String, dynamic> _$$_OutputBindingEventResponseToJson(
        _$_OutputBindingEventResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metadata': instance.metadata,
    };
