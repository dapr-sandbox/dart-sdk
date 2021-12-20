// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_sub_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublishMetadata _$$_PublishMetadataFromJson(Map<String, dynamic> json) =>
    _$_PublishMetadata(
      ttlInSeconds: json['ttlInSeconds'] as int?,
      rawPayload: json['rawPayload'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PublishMetadataToJson(_$_PublishMetadata instance) =>
    <String, dynamic>{
      'ttlInSeconds': instance.ttlInSeconds,
      'rawPayload': instance.rawPayload,
    };
