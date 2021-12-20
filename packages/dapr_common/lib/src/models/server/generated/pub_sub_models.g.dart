// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_sub_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PubSubRoute _$$_PubSubRouteFromJson(Map<String, dynamic> json) =>
    _$_PubSubRoute(
      pubSubName: json['pubsubname'] as String,
      topic: json['topic'] as String,
      route: json['route'] as String,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          {},
    );

Map<String, dynamic> _$$_PubSubRouteToJson(_$_PubSubRoute instance) =>
    <String, dynamic>{
      'pubsubname': instance.pubSubName,
      'topic': instance.topic,
      'route': instance.route,
      'metadata': instance.metadata,
    };

_$_CloudEvent _$$_CloudEventFromJson(Map<String, dynamic> json) =>
    _$_CloudEvent(
      id: json['id'] as String,
      source: Uri.parse(json['source'] as String),
      specVersion: json['specversion'] as String,
      type: json['type'] as String,
      dataContentType: json['datacontenttype'] as String?,
      data: json['data'],
      dataSchema: json['dataschema'] == null
          ? null
          : Uri.parse(json['dataschema'] as String),
      subject: json['subject'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_CloudEventToJson(_$_CloudEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source.toString(),
      'specversion': instance.specVersion,
      'type': instance.type,
      'datacontenttype': instance.dataContentType,
      'data': instance.data,
      'dataschema': instance.dataSchema?.toString(),
      'subject': instance.subject,
      'time': instance.time?.toIso8601String(),
    };
