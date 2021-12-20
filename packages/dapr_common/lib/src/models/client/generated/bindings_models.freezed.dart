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

OutputBindingEvent _$OutputBindingEventFromJson(Map<String, dynamic> json) {
  return _OutputBindingEvent.fromJson(json);
}

/// @nodoc
class _$OutputBindingEventTearOff {
  const _$OutputBindingEventTearOff();

  _OutputBindingEvent call(
      {required String data,
      Map<String, String> metadata = const {},
      required String operation}) {
    return _OutputBindingEvent(
      data: data,
      metadata: metadata,
      operation: operation,
    );
  }

  OutputBindingEvent fromJson(Map<String, Object?> json) {
    return OutputBindingEvent.fromJson(json);
  }
}

/// @nodoc
const $OutputBindingEvent = _$OutputBindingEventTearOff();

/// @nodoc
mixin _$OutputBindingEvent {
  String get data => throw _privateConstructorUsedError;
  Map<String, String> get metadata => throw _privateConstructorUsedError;
  String get operation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputBindingEventCopyWith<OutputBindingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputBindingEventCopyWith<$Res> {
  factory $OutputBindingEventCopyWith(
          OutputBindingEvent value, $Res Function(OutputBindingEvent) then) =
      _$OutputBindingEventCopyWithImpl<$Res>;
  $Res call({String data, Map<String, String> metadata, String operation});
}

/// @nodoc
class _$OutputBindingEventCopyWithImpl<$Res>
    implements $OutputBindingEventCopyWith<$Res> {
  _$OutputBindingEventCopyWithImpl(this._value, this._then);

  final OutputBindingEvent _value;
  // ignore: unused_field
  final $Res Function(OutputBindingEvent) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
    Object? operation = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OutputBindingEventCopyWith<$Res>
    implements $OutputBindingEventCopyWith<$Res> {
  factory _$OutputBindingEventCopyWith(
          _OutputBindingEvent value, $Res Function(_OutputBindingEvent) then) =
      __$OutputBindingEventCopyWithImpl<$Res>;
  @override
  $Res call({String data, Map<String, String> metadata, String operation});
}

/// @nodoc
class __$OutputBindingEventCopyWithImpl<$Res>
    extends _$OutputBindingEventCopyWithImpl<$Res>
    implements _$OutputBindingEventCopyWith<$Res> {
  __$OutputBindingEventCopyWithImpl(
      _OutputBindingEvent _value, $Res Function(_OutputBindingEvent) _then)
      : super(_value, (v) => _then(v as _OutputBindingEvent));

  @override
  _OutputBindingEvent get _value => super._value as _OutputBindingEvent;

  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
    Object? operation = freezed,
  }) {
    return _then(_OutputBindingEvent(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutputBindingEvent implements _OutputBindingEvent {
  const _$_OutputBindingEvent(
      {required this.data, this.metadata = const {}, required this.operation});

  factory _$_OutputBindingEvent.fromJson(Map<String, dynamic> json) =>
      _$$_OutputBindingEventFromJson(json);

  @override
  final String data;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> metadata;
  @override
  final String operation;

  @override
  String toString() {
    return 'OutputBindingEvent(data: $data, metadata: $metadata, operation: $operation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OutputBindingEvent &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data,
      const DeepCollectionEquality().hash(metadata), operation);

  @JsonKey(ignore: true)
  @override
  _$OutputBindingEventCopyWith<_OutputBindingEvent> get copyWith =>
      __$OutputBindingEventCopyWithImpl<_OutputBindingEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutputBindingEventToJson(this);
  }
}

abstract class _OutputBindingEvent implements OutputBindingEvent {
  const factory _OutputBindingEvent(
      {required String data,
      Map<String, String> metadata,
      required String operation}) = _$_OutputBindingEvent;

  factory _OutputBindingEvent.fromJson(Map<String, dynamic> json) =
      _$_OutputBindingEvent.fromJson;

  @override
  String get data;
  @override
  Map<String, String> get metadata;
  @override
  String get operation;
  @override
  @JsonKey(ignore: true)
  _$OutputBindingEventCopyWith<_OutputBindingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

OutputBindingEventResponse _$OutputBindingEventResponseFromJson(
    Map<String, dynamic> json) {
  return _OutputBindingEventResponse.fromJson(json);
}

/// @nodoc
class _$OutputBindingEventResponseTearOff {
  const _$OutputBindingEventResponseTearOff();

  _OutputBindingEventResponse call(
      {required String data, required Map<String, String> metadata}) {
    return _OutputBindingEventResponse(
      data: data,
      metadata: metadata,
    );
  }

  OutputBindingEventResponse fromJson(Map<String, Object?> json) {
    return OutputBindingEventResponse.fromJson(json);
  }
}

/// @nodoc
const $OutputBindingEventResponse = _$OutputBindingEventResponseTearOff();

/// @nodoc
mixin _$OutputBindingEventResponse {
  String get data => throw _privateConstructorUsedError;
  Map<String, String> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputBindingEventResponseCopyWith<OutputBindingEventResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputBindingEventResponseCopyWith<$Res> {
  factory $OutputBindingEventResponseCopyWith(OutputBindingEventResponse value,
          $Res Function(OutputBindingEventResponse) then) =
      _$OutputBindingEventResponseCopyWithImpl<$Res>;
  $Res call({String data, Map<String, String> metadata});
}

/// @nodoc
class _$OutputBindingEventResponseCopyWithImpl<$Res>
    implements $OutputBindingEventResponseCopyWith<$Res> {
  _$OutputBindingEventResponseCopyWithImpl(this._value, this._then);

  final OutputBindingEventResponse _value;
  // ignore: unused_field
  final $Res Function(OutputBindingEventResponse) _then;

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
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$OutputBindingEventResponseCopyWith<$Res>
    implements $OutputBindingEventResponseCopyWith<$Res> {
  factory _$OutputBindingEventResponseCopyWith(
          _OutputBindingEventResponse value,
          $Res Function(_OutputBindingEventResponse) then) =
      __$OutputBindingEventResponseCopyWithImpl<$Res>;
  @override
  $Res call({String data, Map<String, String> metadata});
}

/// @nodoc
class __$OutputBindingEventResponseCopyWithImpl<$Res>
    extends _$OutputBindingEventResponseCopyWithImpl<$Res>
    implements _$OutputBindingEventResponseCopyWith<$Res> {
  __$OutputBindingEventResponseCopyWithImpl(_OutputBindingEventResponse _value,
      $Res Function(_OutputBindingEventResponse) _then)
      : super(_value, (v) => _then(v as _OutputBindingEventResponse));

  @override
  _OutputBindingEventResponse get _value =>
      super._value as _OutputBindingEventResponse;

  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_OutputBindingEventResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutputBindingEventResponse implements _OutputBindingEventResponse {
  const _$_OutputBindingEventResponse(
      {required this.data, required this.metadata});

  factory _$_OutputBindingEventResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OutputBindingEventResponseFromJson(json);

  @override
  final String data;
  @override
  final Map<String, String> metadata;

  @override
  String toString() {
    return 'OutputBindingEventResponse(data: $data, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OutputBindingEventResponse &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, data, const DeepCollectionEquality().hash(metadata));

  @JsonKey(ignore: true)
  @override
  _$OutputBindingEventResponseCopyWith<_OutputBindingEventResponse>
      get copyWith => __$OutputBindingEventResponseCopyWithImpl<
          _OutputBindingEventResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutputBindingEventResponseToJson(this);
  }
}

abstract class _OutputBindingEventResponse
    implements OutputBindingEventResponse {
  const factory _OutputBindingEventResponse(
      {required String data,
      required Map<String, String> metadata}) = _$_OutputBindingEventResponse;

  factory _OutputBindingEventResponse.fromJson(Map<String, dynamic> json) =
      _$_OutputBindingEventResponse.fromJson;

  @override
  String get data;
  @override
  Map<String, String> get metadata;
  @override
  @JsonKey(ignore: true)
  _$OutputBindingEventResponseCopyWith<_OutputBindingEventResponse>
      get copyWith => throw _privateConstructorUsedError;
}
