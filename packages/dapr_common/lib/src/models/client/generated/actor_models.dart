import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_models.freezed.dart';
part 'actor_models.g.dart';

@freezed
class ActorTimer with _$ActorTimer {
  const factory ActorTimer({
    required Duration period,
    Duration? dueTime,
    dynamic data,
    // TODO: Address the call back after understanding this api properly.
    // String callBack,
  }) = _ActorTimer;
  factory ActorTimer.fromJson(Map<String, dynamic> json) =>
      _$ActorTimerFromJson(json);
}

@freezed
class ActorReminder with _$ActorReminder {
  const factory ActorReminder({
    required Duration period,
    Duration? dueTime,
    dynamic data,
  }) = _ActorReminder;

  factory ActorReminder.fromJson(Map<String, dynamic> json) =>
      _$ActorReminderFromJson(json);
}
