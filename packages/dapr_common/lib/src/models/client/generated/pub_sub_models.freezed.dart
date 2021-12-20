// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pub_sub_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublishMetadata _$PublishMetadataFromJson(Map<String, dynamic> json) {
  return _PublishMetadata.fromJson(json);
}

/// @nodoc
class _$PublishMetadataTearOff {
  const _$PublishMetadataTearOff();

  _PublishMetadata call({int? ttlInSeconds, bool rawPayload = false}) {
    return _PublishMetadata(
      ttlInSeconds: ttlInSeconds,
      rawPayload: rawPayload,
    );
  }

  PublishMetadata fromJson(Map<String, Object?> json) {
    return PublishMetadata.fromJson(json);
  }
}

/// @nodoc
const $PublishMetadata = _$PublishMetadataTearOff();

/// @nodoc
mixin _$PublishMetadata {
  int? get ttlInSeconds => throw _privateConstructorUsedError;
  bool get rawPayload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublishMetadataCopyWith<PublishMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishMetadataCopyWith<$Res> {
  factory $PublishMetadataCopyWith(
          PublishMetadata value, $Res Function(PublishMetadata) then) =
      _$PublishMetadataCopyWithImpl<$Res>;
  $Res call({int? ttlInSeconds, bool rawPayload});
}

/// @nodoc
class _$PublishMetadataCopyWithImpl<$Res>
    implements $PublishMetadataCopyWith<$Res> {
  _$PublishMetadataCopyWithImpl(this._value, this._then);

  final PublishMetadata _value;
  // ignore: unused_field
  final $Res Function(PublishMetadata) _then;

  @override
  $Res call({
    Object? ttlInSeconds = freezed,
    Object? rawPayload = freezed,
  }) {
    return _then(_value.copyWith(
      ttlInSeconds: ttlInSeconds == freezed
          ? _value.ttlInSeconds
          : ttlInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      rawPayload: rawPayload == freezed
          ? _value.rawPayload
          : rawPayload // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PublishMetadataCopyWith<$Res>
    implements $PublishMetadataCopyWith<$Res> {
  factory _$PublishMetadataCopyWith(
          _PublishMetadata value, $Res Function(_PublishMetadata) then) =
      __$PublishMetadataCopyWithImpl<$Res>;
  @override
  $Res call({int? ttlInSeconds, bool rawPayload});
}

/// @nodoc
class __$PublishMetadataCopyWithImpl<$Res>
    extends _$PublishMetadataCopyWithImpl<$Res>
    implements _$PublishMetadataCopyWith<$Res> {
  __$PublishMetadataCopyWithImpl(
      _PublishMetadata _value, $Res Function(_PublishMetadata) _then)
      : super(_value, (v) => _then(v as _PublishMetadata));

  @override
  _PublishMetadata get _value => super._value as _PublishMetadata;

  @override
  $Res call({
    Object? ttlInSeconds = freezed,
    Object? rawPayload = freezed,
  }) {
    return _then(_PublishMetadata(
      ttlInSeconds: ttlInSeconds == freezed
          ? _value.ttlInSeconds
          : ttlInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      rawPayload: rawPayload == freezed
          ? _value.rawPayload
          : rawPayload // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublishMetadata implements _PublishMetadata {
  const _$_PublishMetadata({this.ttlInSeconds, this.rawPayload = false});

  factory _$_PublishMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_PublishMetadataFromJson(json);

  @override
  final int? ttlInSeconds;
  @JsonKey(defaultValue: false)
  @override
  final bool rawPayload;

  @override
  String toString() {
    return 'PublishMetadata(ttlInSeconds: $ttlInSeconds, rawPayload: $rawPayload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PublishMetadata &&
            (identical(other.ttlInSeconds, ttlInSeconds) ||
                other.ttlInSeconds == ttlInSeconds) &&
            (identical(other.rawPayload, rawPayload) ||
                other.rawPayload == rawPayload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ttlInSeconds, rawPayload);

  @JsonKey(ignore: true)
  @override
  _$PublishMetadataCopyWith<_PublishMetadata> get copyWith =>
      __$PublishMetadataCopyWithImpl<_PublishMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublishMetadataToJson(this);
  }
}

abstract class _PublishMetadata implements PublishMetadata {
  const factory _PublishMetadata({int? ttlInSeconds, bool rawPayload}) =
      _$_PublishMetadata;

  factory _PublishMetadata.fromJson(Map<String, dynamic> json) =
      _$_PublishMetadata.fromJson;

  @override
  int? get ttlInSeconds;
  @override
  bool get rawPayload;
  @override
  @JsonKey(ignore: true)
  _$PublishMetadataCopyWith<_PublishMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
