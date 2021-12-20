// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actor_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActorTimer _$ActorTimerFromJson(Map<String, dynamic> json) {
  return _ActorTimer.fromJson(json);
}

/// @nodoc
class _$ActorTimerTearOff {
  const _$ActorTimerTearOff();

  _ActorTimer call(
      {required Duration period, Duration? dueTime, dynamic data}) {
    return _ActorTimer(
      period: period,
      dueTime: dueTime,
      data: data,
    );
  }

  ActorTimer fromJson(Map<String, Object?> json) {
    return ActorTimer.fromJson(json);
  }
}

/// @nodoc
const $ActorTimer = _$ActorTimerTearOff();

/// @nodoc
mixin _$ActorTimer {
  Duration get period => throw _privateConstructorUsedError;
  Duration? get dueTime => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorTimerCopyWith<ActorTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorTimerCopyWith<$Res> {
  factory $ActorTimerCopyWith(
          ActorTimer value, $Res Function(ActorTimer) then) =
      _$ActorTimerCopyWithImpl<$Res>;
  $Res call({Duration period, Duration? dueTime, dynamic data});
}

/// @nodoc
class _$ActorTimerCopyWithImpl<$Res> implements $ActorTimerCopyWith<$Res> {
  _$ActorTimerCopyWithImpl(this._value, this._then);

  final ActorTimer _value;
  // ignore: unused_field
  final $Res Function(ActorTimer) _then;

  @override
  $Res call({
    Object? period = freezed,
    Object? dueTime = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Duration,
      dueTime: dueTime == freezed
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ActorTimerCopyWith<$Res> implements $ActorTimerCopyWith<$Res> {
  factory _$ActorTimerCopyWith(
          _ActorTimer value, $Res Function(_ActorTimer) then) =
      __$ActorTimerCopyWithImpl<$Res>;
  @override
  $Res call({Duration period, Duration? dueTime, dynamic data});
}

/// @nodoc
class __$ActorTimerCopyWithImpl<$Res> extends _$ActorTimerCopyWithImpl<$Res>
    implements _$ActorTimerCopyWith<$Res> {
  __$ActorTimerCopyWithImpl(
      _ActorTimer _value, $Res Function(_ActorTimer) _then)
      : super(_value, (v) => _then(v as _ActorTimer));

  @override
  _ActorTimer get _value => super._value as _ActorTimer;

  @override
  $Res call({
    Object? period = freezed,
    Object? dueTime = freezed,
    Object? data = freezed,
  }) {
    return _then(_ActorTimer(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Duration,
      dueTime: dueTime == freezed
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorTimer implements _ActorTimer {
  const _$_ActorTimer({required this.period, this.dueTime, this.data});

  factory _$_ActorTimer.fromJson(Map<String, dynamic> json) =>
      _$$_ActorTimerFromJson(json);

  @override
  final Duration period;
  @override
  final Duration? dueTime;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ActorTimer(period: $period, dueTime: $dueTime, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActorTimer &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.dueTime, dueTime) || other.dueTime == dueTime) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, period, dueTime, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ActorTimerCopyWith<_ActorTimer> get copyWith =>
      __$ActorTimerCopyWithImpl<_ActorTimer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorTimerToJson(this);
  }
}

abstract class _ActorTimer implements ActorTimer {
  const factory _ActorTimer(
      {required Duration period,
      Duration? dueTime,
      dynamic data}) = _$_ActorTimer;

  factory _ActorTimer.fromJson(Map<String, dynamic> json) =
      _$_ActorTimer.fromJson;

  @override
  Duration get period;
  @override
  Duration? get dueTime;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$ActorTimerCopyWith<_ActorTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

ActorReminder _$ActorReminderFromJson(Map<String, dynamic> json) {
  return _ActorReminder.fromJson(json);
}

/// @nodoc
class _$ActorReminderTearOff {
  const _$ActorReminderTearOff();

  _ActorReminder call(
      {required Duration period, Duration? dueTime, dynamic data}) {
    return _ActorReminder(
      period: period,
      dueTime: dueTime,
      data: data,
    );
  }

  ActorReminder fromJson(Map<String, Object?> json) {
    return ActorReminder.fromJson(json);
  }
}

/// @nodoc
const $ActorReminder = _$ActorReminderTearOff();

/// @nodoc
mixin _$ActorReminder {
  Duration get period => throw _privateConstructorUsedError;
  Duration? get dueTime => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorReminderCopyWith<ActorReminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorReminderCopyWith<$Res> {
  factory $ActorReminderCopyWith(
          ActorReminder value, $Res Function(ActorReminder) then) =
      _$ActorReminderCopyWithImpl<$Res>;
  $Res call({Duration period, Duration? dueTime, dynamic data});
}

/// @nodoc
class _$ActorReminderCopyWithImpl<$Res>
    implements $ActorReminderCopyWith<$Res> {
  _$ActorReminderCopyWithImpl(this._value, this._then);

  final ActorReminder _value;
  // ignore: unused_field
  final $Res Function(ActorReminder) _then;

  @override
  $Res call({
    Object? period = freezed,
    Object? dueTime = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Duration,
      dueTime: dueTime == freezed
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ActorReminderCopyWith<$Res>
    implements $ActorReminderCopyWith<$Res> {
  factory _$ActorReminderCopyWith(
          _ActorReminder value, $Res Function(_ActorReminder) then) =
      __$ActorReminderCopyWithImpl<$Res>;
  @override
  $Res call({Duration period, Duration? dueTime, dynamic data});
}

/// @nodoc
class __$ActorReminderCopyWithImpl<$Res>
    extends _$ActorReminderCopyWithImpl<$Res>
    implements _$ActorReminderCopyWith<$Res> {
  __$ActorReminderCopyWithImpl(
      _ActorReminder _value, $Res Function(_ActorReminder) _then)
      : super(_value, (v) => _then(v as _ActorReminder));

  @override
  _ActorReminder get _value => super._value as _ActorReminder;

  @override
  $Res call({
    Object? period = freezed,
    Object? dueTime = freezed,
    Object? data = freezed,
  }) {
    return _then(_ActorReminder(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Duration,
      dueTime: dueTime == freezed
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorReminder implements _ActorReminder {
  const _$_ActorReminder({required this.period, this.dueTime, this.data});

  factory _$_ActorReminder.fromJson(Map<String, dynamic> json) =>
      _$$_ActorReminderFromJson(json);

  @override
  final Duration period;
  @override
  final Duration? dueTime;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ActorReminder(period: $period, dueTime: $dueTime, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActorReminder &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.dueTime, dueTime) || other.dueTime == dueTime) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, period, dueTime, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ActorReminderCopyWith<_ActorReminder> get copyWith =>
      __$ActorReminderCopyWithImpl<_ActorReminder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorReminderToJson(this);
  }
}

abstract class _ActorReminder implements ActorReminder {
  const factory _ActorReminder(
      {required Duration period,
      Duration? dueTime,
      dynamic data}) = _$_ActorReminder;

  factory _ActorReminder.fromJson(Map<String, dynamic> json) =
      _$_ActorReminder.fromJson;

  @override
  Duration get period;
  @override
  Duration? get dueTime;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$ActorReminderCopyWith<_ActorReminder> get copyWith =>
      throw _privateConstructorUsedError;
}
