// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoker_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvokerCallbackContent _$InvokerCallbackContentFromJson(
    Map<String, dynamic> json) {
  return _InvokerCallbackContent.fromJson(json);
}

/// @nodoc
class _$InvokerCallbackContentTearOff {
  const _$InvokerCallbackContentTearOff();

  _InvokerCallbackContent call(
      {String? body,
      Map<String, String>? query,
      InvokerCallbackMetadata? metadata}) {
    return _InvokerCallbackContent(
      body: body,
      query: query,
      metadata: metadata,
    );
  }

  InvokerCallbackContent fromJson(Map<String, Object?> json) {
    return InvokerCallbackContent.fromJson(json);
  }
}

/// @nodoc
const $InvokerCallbackContent = _$InvokerCallbackContentTearOff();

/// @nodoc
mixin _$InvokerCallbackContent {
  String? get body => throw _privateConstructorUsedError;
  Map<String, String>? get query => throw _privateConstructorUsedError;
  InvokerCallbackMetadata? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvokerCallbackContentCopyWith<InvokerCallbackContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvokerCallbackContentCopyWith<$Res> {
  factory $InvokerCallbackContentCopyWith(InvokerCallbackContent value,
          $Res Function(InvokerCallbackContent) then) =
      _$InvokerCallbackContentCopyWithImpl<$Res>;
  $Res call(
      {String? body,
      Map<String, String>? query,
      InvokerCallbackMetadata? metadata});

  $InvokerCallbackMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$InvokerCallbackContentCopyWithImpl<$Res>
    implements $InvokerCallbackContentCopyWith<$Res> {
  _$InvokerCallbackContentCopyWithImpl(this._value, this._then);

  final InvokerCallbackContent _value;
  // ignore: unused_field
  final $Res Function(InvokerCallbackContent) _then;

  @override
  $Res call({
    Object? body = freezed,
    Object? query = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as InvokerCallbackMetadata?,
    ));
  }

  @override
  $InvokerCallbackMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $InvokerCallbackMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc
abstract class _$InvokerCallbackContentCopyWith<$Res>
    implements $InvokerCallbackContentCopyWith<$Res> {
  factory _$InvokerCallbackContentCopyWith(_InvokerCallbackContent value,
          $Res Function(_InvokerCallbackContent) then) =
      __$InvokerCallbackContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? body,
      Map<String, String>? query,
      InvokerCallbackMetadata? metadata});

  @override
  $InvokerCallbackMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$InvokerCallbackContentCopyWithImpl<$Res>
    extends _$InvokerCallbackContentCopyWithImpl<$Res>
    implements _$InvokerCallbackContentCopyWith<$Res> {
  __$InvokerCallbackContentCopyWithImpl(_InvokerCallbackContent _value,
      $Res Function(_InvokerCallbackContent) _then)
      : super(_value, (v) => _then(v as _InvokerCallbackContent));

  @override
  _InvokerCallbackContent get _value => super._value as _InvokerCallbackContent;

  @override
  $Res call({
    Object? body = freezed,
    Object? query = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_InvokerCallbackContent(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as InvokerCallbackMetadata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvokerCallbackContent implements _InvokerCallbackContent {
  const _$_InvokerCallbackContent({this.body, this.query, this.metadata});

  factory _$_InvokerCallbackContent.fromJson(Map<String, dynamic> json) =>
      _$$_InvokerCallbackContentFromJson(json);

  @override
  final String? body;
  @override
  final Map<String, String>? query;
  @override
  final InvokerCallbackMetadata? metadata;

  @override
  String toString() {
    return 'InvokerCallbackContent(body: $body, query: $query, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvokerCallbackContent &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, body, const DeepCollectionEquality().hash(query), metadata);

  @JsonKey(ignore: true)
  @override
  _$InvokerCallbackContentCopyWith<_InvokerCallbackContent> get copyWith =>
      __$InvokerCallbackContentCopyWithImpl<_InvokerCallbackContent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvokerCallbackContentToJson(this);
  }
}

abstract class _InvokerCallbackContent implements InvokerCallbackContent {
  const factory _InvokerCallbackContent(
      {String? body,
      Map<String, String>? query,
      InvokerCallbackMetadata? metadata}) = _$_InvokerCallbackContent;

  factory _InvokerCallbackContent.fromJson(Map<String, dynamic> json) =
      _$_InvokerCallbackContent.fromJson;

  @override
  String? get body;
  @override
  Map<String, String>? get query;
  @override
  InvokerCallbackMetadata? get metadata;
  @override
  @JsonKey(ignore: true)
  _$InvokerCallbackContentCopyWith<_InvokerCallbackContent> get copyWith =>
      throw _privateConstructorUsedError;
}

InvokerCallbackMetadata _$InvokerCallbackMetadataFromJson(
    Map<String, dynamic> json) {
  return _InvokerCallbackMetadata.fromJson(json);
}

/// @nodoc
class _$InvokerCallbackMetadataTearOff {
  const _$InvokerCallbackMetadataTearOff();

  _InvokerCallbackMetadata call({String? contentType}) {
    return _InvokerCallbackMetadata(
      contentType: contentType,
    );
  }

  InvokerCallbackMetadata fromJson(Map<String, Object?> json) {
    return InvokerCallbackMetadata.fromJson(json);
  }
}

/// @nodoc
const $InvokerCallbackMetadata = _$InvokerCallbackMetadataTearOff();

/// @nodoc
mixin _$InvokerCallbackMetadata {
  String? get contentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvokerCallbackMetadataCopyWith<InvokerCallbackMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvokerCallbackMetadataCopyWith<$Res> {
  factory $InvokerCallbackMetadataCopyWith(InvokerCallbackMetadata value,
          $Res Function(InvokerCallbackMetadata) then) =
      _$InvokerCallbackMetadataCopyWithImpl<$Res>;
  $Res call({String? contentType});
}

/// @nodoc
class _$InvokerCallbackMetadataCopyWithImpl<$Res>
    implements $InvokerCallbackMetadataCopyWith<$Res> {
  _$InvokerCallbackMetadataCopyWithImpl(this._value, this._then);

  final InvokerCallbackMetadata _value;
  // ignore: unused_field
  final $Res Function(InvokerCallbackMetadata) _then;

  @override
  $Res call({
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InvokerCallbackMetadataCopyWith<$Res>
    implements $InvokerCallbackMetadataCopyWith<$Res> {
  factory _$InvokerCallbackMetadataCopyWith(_InvokerCallbackMetadata value,
          $Res Function(_InvokerCallbackMetadata) then) =
      __$InvokerCallbackMetadataCopyWithImpl<$Res>;
  @override
  $Res call({String? contentType});
}

/// @nodoc
class __$InvokerCallbackMetadataCopyWithImpl<$Res>
    extends _$InvokerCallbackMetadataCopyWithImpl<$Res>
    implements _$InvokerCallbackMetadataCopyWith<$Res> {
  __$InvokerCallbackMetadataCopyWithImpl(_InvokerCallbackMetadata _value,
      $Res Function(_InvokerCallbackMetadata) _then)
      : super(_value, (v) => _then(v as _InvokerCallbackMetadata));

  @override
  _InvokerCallbackMetadata get _value =>
      super._value as _InvokerCallbackMetadata;

  @override
  $Res call({
    Object? contentType = freezed,
  }) {
    return _then(_InvokerCallbackMetadata(
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvokerCallbackMetadata implements _InvokerCallbackMetadata {
  const _$_InvokerCallbackMetadata({this.contentType});

  factory _$_InvokerCallbackMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_InvokerCallbackMetadataFromJson(json);

  @override
  final String? contentType;

  @override
  String toString() {
    return 'InvokerCallbackMetadata(contentType: $contentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvokerCallbackMetadata &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentType);

  @JsonKey(ignore: true)
  @override
  _$InvokerCallbackMetadataCopyWith<_InvokerCallbackMetadata> get copyWith =>
      __$InvokerCallbackMetadataCopyWithImpl<_InvokerCallbackMetadata>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvokerCallbackMetadataToJson(this);
  }
}

abstract class _InvokerCallbackMetadata implements InvokerCallbackMetadata {
  const factory _InvokerCallbackMetadata({String? contentType}) =
      _$_InvokerCallbackMetadata;

  factory _InvokerCallbackMetadata.fromJson(Map<String, dynamic> json) =
      _$_InvokerCallbackMetadata.fromJson;

  @override
  String? get contentType;
  @override
  @JsonKey(ignore: true)
  _$InvokerCallbackMetadataCopyWith<_InvokerCallbackMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

InvokerCallbackOptions _$InvokerCallbackOptionsFromJson(
    Map<String, dynamic> json) {
  return _InvokerCallbackOptions.fromJson(json);
}

/// @nodoc
class _$InvokerCallbackOptionsTearOff {
  const _$InvokerCallbackOptionsTearOff();

  _InvokerCallbackOptions call({required HttpMethod method}) {
    return _InvokerCallbackOptions(
      method: method,
    );
  }

  InvokerCallbackOptions fromJson(Map<String, Object?> json) {
    return InvokerCallbackOptions.fromJson(json);
  }
}

/// @nodoc
const $InvokerCallbackOptions = _$InvokerCallbackOptionsTearOff();

/// @nodoc
mixin _$InvokerCallbackOptions {
  HttpMethod get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvokerCallbackOptionsCopyWith<InvokerCallbackOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvokerCallbackOptionsCopyWith<$Res> {
  factory $InvokerCallbackOptionsCopyWith(InvokerCallbackOptions value,
          $Res Function(InvokerCallbackOptions) then) =
      _$InvokerCallbackOptionsCopyWithImpl<$Res>;
  $Res call({HttpMethod method});
}

/// @nodoc
class _$InvokerCallbackOptionsCopyWithImpl<$Res>
    implements $InvokerCallbackOptionsCopyWith<$Res> {
  _$InvokerCallbackOptionsCopyWithImpl(this._value, this._then);

  final InvokerCallbackOptions _value;
  // ignore: unused_field
  final $Res Function(InvokerCallbackOptions) _then;

  @override
  $Res call({
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
    ));
  }
}

/// @nodoc
abstract class _$InvokerCallbackOptionsCopyWith<$Res>
    implements $InvokerCallbackOptionsCopyWith<$Res> {
  factory _$InvokerCallbackOptionsCopyWith(_InvokerCallbackOptions value,
          $Res Function(_InvokerCallbackOptions) then) =
      __$InvokerCallbackOptionsCopyWithImpl<$Res>;
  @override
  $Res call({HttpMethod method});
}

/// @nodoc
class __$InvokerCallbackOptionsCopyWithImpl<$Res>
    extends _$InvokerCallbackOptionsCopyWithImpl<$Res>
    implements _$InvokerCallbackOptionsCopyWith<$Res> {
  __$InvokerCallbackOptionsCopyWithImpl(_InvokerCallbackOptions _value,
      $Res Function(_InvokerCallbackOptions) _then)
      : super(_value, (v) => _then(v as _InvokerCallbackOptions));

  @override
  _InvokerCallbackOptions get _value => super._value as _InvokerCallbackOptions;

  @override
  $Res call({
    Object? method = freezed,
  }) {
    return _then(_InvokerCallbackOptions(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvokerCallbackOptions implements _InvokerCallbackOptions {
  const _$_InvokerCallbackOptions({required this.method});

  factory _$_InvokerCallbackOptions.fromJson(Map<String, dynamic> json) =>
      _$$_InvokerCallbackOptionsFromJson(json);

  @override
  final HttpMethod method;

  @override
  String toString() {
    return 'InvokerCallbackOptions(method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvokerCallbackOptions &&
            (identical(other.method, method) || other.method == method));
  }

  @override
  int get hashCode => Object.hash(runtimeType, method);

  @JsonKey(ignore: true)
  @override
  _$InvokerCallbackOptionsCopyWith<_InvokerCallbackOptions> get copyWith =>
      __$InvokerCallbackOptionsCopyWithImpl<_InvokerCallbackOptions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvokerCallbackOptionsToJson(this);
  }
}

abstract class _InvokerCallbackOptions implements InvokerCallbackOptions {
  const factory _InvokerCallbackOptions({required HttpMethod method}) =
      _$_InvokerCallbackOptions;

  factory _InvokerCallbackOptions.fromJson(Map<String, dynamic> json) =
      _$_InvokerCallbackOptions.fromJson;

  @override
  HttpMethod get method;
  @override
  @JsonKey(ignore: true)
  _$InvokerCallbackOptionsCopyWith<_InvokerCallbackOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
