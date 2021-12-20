// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'secret_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecretResponse _$SecretResponseFromJson(Map<String, dynamic> json) {
  return _SecretResponse.fromJson(json);
}

/// @nodoc
class _$SecretResponseTearOff {
  const _$SecretResponseTearOff();

  _SecretResponse call({required Map<String, dynamic> secrets}) {
    return _SecretResponse(
      secrets: secrets,
    );
  }

  SecretResponse fromJson(Map<String, Object?> json) {
    return SecretResponse.fromJson(json);
  }
}

/// @nodoc
const $SecretResponse = _$SecretResponseTearOff();

/// @nodoc
mixin _$SecretResponse {
  Map<String, dynamic> get secrets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecretResponseCopyWith<SecretResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecretResponseCopyWith<$Res> {
  factory $SecretResponseCopyWith(
          SecretResponse value, $Res Function(SecretResponse) then) =
      _$SecretResponseCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> secrets});
}

/// @nodoc
class _$SecretResponseCopyWithImpl<$Res>
    implements $SecretResponseCopyWith<$Res> {
  _$SecretResponseCopyWithImpl(this._value, this._then);

  final SecretResponse _value;
  // ignore: unused_field
  final $Res Function(SecretResponse) _then;

  @override
  $Res call({
    Object? secrets = freezed,
  }) {
    return _then(_value.copyWith(
      secrets: secrets == freezed
          ? _value.secrets
          : secrets // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$SecretResponseCopyWith<$Res>
    implements $SecretResponseCopyWith<$Res> {
  factory _$SecretResponseCopyWith(
          _SecretResponse value, $Res Function(_SecretResponse) then) =
      __$SecretResponseCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic> secrets});
}

/// @nodoc
class __$SecretResponseCopyWithImpl<$Res>
    extends _$SecretResponseCopyWithImpl<$Res>
    implements _$SecretResponseCopyWith<$Res> {
  __$SecretResponseCopyWithImpl(
      _SecretResponse _value, $Res Function(_SecretResponse) _then)
      : super(_value, (v) => _then(v as _SecretResponse));

  @override
  _SecretResponse get _value => super._value as _SecretResponse;

  @override
  $Res call({
    Object? secrets = freezed,
  }) {
    return _then(_SecretResponse(
      secrets: secrets == freezed
          ? _value.secrets
          : secrets // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecretResponse implements _SecretResponse {
  const _$_SecretResponse({required this.secrets});

  factory _$_SecretResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SecretResponseFromJson(json);

  @override
  final Map<String, dynamic> secrets;

  @override
  String toString() {
    return 'SecretResponse(secrets: $secrets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SecretResponse &&
            const DeepCollectionEquality().equals(other.secrets, secrets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(secrets));

  @JsonKey(ignore: true)
  @override
  _$SecretResponseCopyWith<_SecretResponse> get copyWith =>
      __$SecretResponseCopyWithImpl<_SecretResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecretResponseToJson(this);
  }
}

abstract class _SecretResponse implements SecretResponse {
  const factory _SecretResponse({required Map<String, dynamic> secrets}) =
      _$_SecretResponse;

  factory _SecretResponse.fromJson(Map<String, dynamic> json) =
      _$_SecretResponse.fromJson;

  @override
  Map<String, dynamic> get secrets;
  @override
  @JsonKey(ignore: true)
  _$SecretResponseCopyWith<_SecretResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
