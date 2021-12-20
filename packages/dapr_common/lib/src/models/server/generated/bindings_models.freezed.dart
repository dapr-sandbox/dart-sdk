// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bindings_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BindingEvent _$BindingEventFromJson(Map<String, dynamic> json) {
  return _BindingEvent.fromJson(json);
}

/// @nodoc
class _$BindingEventTearOff {
  const _$BindingEventTearOff();

  _BindingEvent call(
      {required String data, Map<String, dynamic> metadata = const {}}) {
    return _BindingEvent(
      data: data,
      metadata: metadata,
    );
  }

  BindingEvent fromJson(Map<String, Object?> json) {
    return BindingEvent.fromJson(json);
  }
}

/// @nodoc
const $BindingEvent = _$BindingEventTearOff();

/// @nodoc
mixin _$BindingEvent {
  String get data => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BindingEventCopyWith<BindingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BindingEventCopyWith<$Res> {
  factory $BindingEventCopyWith(
          BindingEvent value, $Res Function(BindingEvent) then) =
      _$BindingEventCopyWithImpl<$Res>;
  $Res call({String data, Map<String, dynamic> metadata});
}

/// @nodoc
class _$BindingEventCopyWithImpl<$Res> implements $BindingEventCopyWith<$Res> {
  _$BindingEventCopyWithImpl(this._value, this._then);

  final BindingEvent _value;
  // ignore: unused_field
  final $Res Function(BindingEvent) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$BindingEventCopyWith<$Res>
    implements $BindingEventCopyWith<$Res> {
  factory _$BindingEventCopyWith(
          _BindingEvent value, $Res Function(_BindingEvent) then) =
      __$BindingEventCopyWithImpl<$Res>;
  @override
  $Res call({String data, Map<String, dynamic> metadata});
}

/// @nodoc
class __$BindingEventCopyWithImpl<$Res> extends _$BindingEventCopyWithImpl<$Res>
    implements _$BindingEventCopyWith<$Res> {
  __$BindingEventCopyWithImpl(
      _BindingEvent _value, $Res Function(_BindingEvent) _then)
      : super(_value, (v) => _then(v as _BindingEvent));

  @override
  _BindingEvent get _value => super._value as _BindingEvent;

  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_BindingEvent(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BindingEvent implements _BindingEvent {
  const _$_BindingEvent({required this.data, this.metadata = const {}});

  factory _$_BindingEvent.fromJson(Map<String, dynamic> json) =>
      _$$_BindingEventFromJson(json);

  @override
  final String data;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, dynamic> metadata;

  @override
  String toString() {
    return 'BindingEvent(data: $data, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BindingEvent &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, data, const DeepCollectionEquality().hash(metadata));

  @JsonKey(ignore: true)
  @override
  _$BindingEventCopyWith<_BindingEvent> get copyWith =>
      __$BindingEventCopyWithImpl<_BindingEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BindingEventToJson(this);
  }
}

abstract class _BindingEvent implements BindingEvent {
  const factory _BindingEvent(
      {required String data, Map<String, dynamic> metadata}) = _$_BindingEvent;

  factory _BindingEvent.fromJson(Map<String, dynamic> json) =
      _$_BindingEvent.fromJson;

  @override
  String get data;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$BindingEventCopyWith<_BindingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
