// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActorTimer _$$_ActorTimerFromJson(Map<String, dynamic> json) =>
    _$_ActorTimer(
      period: Duration(microseconds: json['period'] as int),
      dueTime: json['dueTime'] == null
          ? null
          : Duration(microseconds: json['dueTime'] as int),
      data: json['data'],
    );

Map<String, dynamic> _$$_ActorTimerToJson(_$_ActorTimer instance) =>
    <String, dynamic>{
      'period': instance.period.inMicroseconds,
      'dueTime': instance.dueTime?.inMicroseconds,
      'data': instance.data,
    };

_$_ActorReminder _$$_ActorReminderFromJson(Map<String, dynamic> json) =>
    _$_ActorReminder(
      period: Duration(microseconds: json['period'] as int),
      dueTime: json['dueTime'] == null
          ? null
          : Duration(microseconds: json['dueTime'] as int),
      data: json['data'],
    );

Map<String, dynamic> _$$_ActorReminderToJson(_$_ActorReminder instance) =>
    <String, dynamic>{
      'period': instance.period.inMicroseconds,
      'dueTime': instance.dueTime?.inMicroseconds,
      'data': instance.data,
    };
