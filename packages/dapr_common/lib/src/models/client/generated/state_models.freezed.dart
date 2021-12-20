// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveStateItem _$SaveStateItemFromJson(Map<String, dynamic> json) {
  return _SaveStateItem.fromJson(json);
}

/// @nodoc
class _$SaveStateItemTearOff {
  const _$SaveStateItemTearOff();

  _SaveStateItem call(
      {required String key, required dynamic value, String? etag}) {
    return _SaveStateItem(
      key: key,
      value: value,
      etag: etag,
    );
  }

  SaveStateItem fromJson(Map<String, Object?> json) {
    return SaveStateItem.fromJson(json);
  }
}

/// @nodoc
const $SaveStateItem = _$SaveStateItemTearOff();

/// @nodoc
mixin _$SaveStateItem {
  String get key => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveStateItemCopyWith<SaveStateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveStateItemCopyWith<$Res> {
  factory $SaveStateItemCopyWith(
          SaveStateItem value, $Res Function(SaveStateItem) then) =
      _$SaveStateItemCopyWithImpl<$Res>;
  $Res call({String key, dynamic value, String? etag});
}

/// @nodoc
class _$SaveStateItemCopyWithImpl<$Res>
    implements $SaveStateItemCopyWith<$Res> {
  _$SaveStateItemCopyWithImpl(this._value, this._then);

  final SaveStateItem _value;
  // ignore: unused_field
  final $Res Function(SaveStateItem) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SaveStateItemCopyWith<$Res>
    implements $SaveStateItemCopyWith<$Res> {
  factory _$SaveStateItemCopyWith(
          _SaveStateItem value, $Res Function(_SaveStateItem) then) =
      __$SaveStateItemCopyWithImpl<$Res>;
  @override
  $Res call({String key, dynamic value, String? etag});
}

/// @nodoc
class __$SaveStateItemCopyWithImpl<$Res>
    extends _$SaveStateItemCopyWithImpl<$Res>
    implements _$SaveStateItemCopyWith<$Res> {
  __$SaveStateItemCopyWithImpl(
      _SaveStateItem _value, $Res Function(_SaveStateItem) _then)
      : super(_value, (v) => _then(v as _SaveStateItem));

  @override
  _SaveStateItem get _value => super._value as _SaveStateItem;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? etag = freezed,
  }) {
    return _then(_SaveStateItem(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaveStateItem implements _SaveStateItem {
  _$_SaveStateItem({required this.key, required this.value, this.etag});

  factory _$_SaveStateItem.fromJson(Map<String, dynamic> json) =>
      _$$_SaveStateItemFromJson(json);

  @override
  final String key;
  @override
  final dynamic value;
  @override
  final String? etag;

  @override
  String toString() {
    return 'SaveStateItem(key: $key, value: $value, etag: $etag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveStateItem &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.etag, etag) || other.etag == etag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(value), etag);

  @JsonKey(ignore: true)
  @override
  _$SaveStateItemCopyWith<_SaveStateItem> get copyWith =>
      __$SaveStateItemCopyWithImpl<_SaveStateItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveStateItemToJson(this);
  }
}

abstract class _SaveStateItem implements SaveStateItem {
  factory _SaveStateItem(
      {required String key,
      required dynamic value,
      String? etag}) = _$_SaveStateItem;

  factory _SaveStateItem.fromJson(Map<String, dynamic> json) =
      _$_SaveStateItem.fromJson;

  @override
  String get key;
  @override
  dynamic get value;
  @override
  String? get etag;
  @override
  @JsonKey(ignore: true)
  _$SaveStateItemCopyWith<_SaveStateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

BulkStateItem _$BulkStateItemFromJson(Map<String, dynamic> json) {
  return _BulkStateItem.fromJson(json);
}

/// @nodoc
class _$BulkStateItemTearOff {
  const _$BulkStateItemTearOff();

  _BulkStateItem call(
      {required String key, required dynamic data, String? etag}) {
    return _BulkStateItem(
      key: key,
      data: data,
      etag: etag,
    );
  }

  BulkStateItem fromJson(Map<String, Object?> json) {
    return BulkStateItem.fromJson(json);
  }
}

/// @nodoc
const $BulkStateItem = _$BulkStateItemTearOff();

/// @nodoc
mixin _$BulkStateItem {
  String get key => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulkStateItemCopyWith<BulkStateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkStateItemCopyWith<$Res> {
  factory $BulkStateItemCopyWith(
          BulkStateItem value, $Res Function(BulkStateItem) then) =
      _$BulkStateItemCopyWithImpl<$Res>;
  $Res call({String key, dynamic data, String? etag});
}

/// @nodoc
class _$BulkStateItemCopyWithImpl<$Res>
    implements $BulkStateItemCopyWith<$Res> {
  _$BulkStateItemCopyWithImpl(this._value, this._then);

  final BulkStateItem _value;
  // ignore: unused_field
  final $Res Function(BulkStateItem) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? data = freezed,
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BulkStateItemCopyWith<$Res>
    implements $BulkStateItemCopyWith<$Res> {
  factory _$BulkStateItemCopyWith(
          _BulkStateItem value, $Res Function(_BulkStateItem) then) =
      __$BulkStateItemCopyWithImpl<$Res>;
  @override
  $Res call({String key, dynamic data, String? etag});
}

/// @nodoc
class __$BulkStateItemCopyWithImpl<$Res>
    extends _$BulkStateItemCopyWithImpl<$Res>
    implements _$BulkStateItemCopyWith<$Res> {
  __$BulkStateItemCopyWithImpl(
      _BulkStateItem _value, $Res Function(_BulkStateItem) _then)
      : super(_value, (v) => _then(v as _BulkStateItem));

  @override
  _BulkStateItem get _value => super._value as _BulkStateItem;

  @override
  $Res call({
    Object? key = freezed,
    Object? data = freezed,
    Object? etag = freezed,
  }) {
    return _then(_BulkStateItem(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BulkStateItem implements _BulkStateItem {
  _$_BulkStateItem({required this.key, required this.data, this.etag});

  factory _$_BulkStateItem.fromJson(Map<String, dynamic> json) =>
      _$$_BulkStateItemFromJson(json);

  @override
  final String key;
  @override
  final dynamic data;
  @override
  final String? etag;

  @override
  String toString() {
    return 'BulkStateItem(key: $key, data: $data, etag: $etag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BulkStateItem &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.etag, etag) || other.etag == etag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(data), etag);

  @JsonKey(ignore: true)
  @override
  _$BulkStateItemCopyWith<_BulkStateItem> get copyWith =>
      __$BulkStateItemCopyWithImpl<_BulkStateItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BulkStateItemToJson(this);
  }
}

abstract class _BulkStateItem implements BulkStateItem {
  factory _BulkStateItem(
      {required String key,
      required dynamic data,
      String? etag}) = _$_BulkStateItem;

  factory _BulkStateItem.fromJson(Map<String, dynamic> json) =
      _$_BulkStateItem.fromJson;

  @override
  String get key;
  @override
  dynamic get data;
  @override
  String? get etag;
  @override
  @JsonKey(ignore: true)
  _$BulkStateItemCopyWith<_BulkStateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

StateOptions _$StateOptionsFromJson(Map<String, dynamic> json) {
  return _StateOptions.fromJson(json);
}

/// @nodoc
class _$StateOptionsTearOff {
  const _$StateOptionsTearOff();

  _StateOptions call({Concurrency? concurrency, Consistency? consistency}) {
    return _StateOptions(
      concurrency: concurrency,
      consistency: consistency,
    );
  }

  StateOptions fromJson(Map<String, Object?> json) {
    return StateOptions.fromJson(json);
  }
}

/// @nodoc
const $StateOptions = _$StateOptionsTearOff();

/// @nodoc
mixin _$StateOptions {
  Concurrency? get concurrency => throw _privateConstructorUsedError;
  Consistency? get consistency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateOptionsCopyWith<StateOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateOptionsCopyWith<$Res> {
  factory $StateOptionsCopyWith(
          StateOptions value, $Res Function(StateOptions) then) =
      _$StateOptionsCopyWithImpl<$Res>;
  $Res call({Concurrency? concurrency, Consistency? consistency});
}

/// @nodoc
class _$StateOptionsCopyWithImpl<$Res> implements $StateOptionsCopyWith<$Res> {
  _$StateOptionsCopyWithImpl(this._value, this._then);

  final StateOptions _value;
  // ignore: unused_field
  final $Res Function(StateOptions) _then;

  @override
  $Res call({
    Object? concurrency = freezed,
    Object? consistency = freezed,
  }) {
    return _then(_value.copyWith(
      concurrency: concurrency == freezed
          ? _value.concurrency
          : concurrency // ignore: cast_nullable_to_non_nullable
              as Concurrency?,
      consistency: consistency == freezed
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as Consistency?,
    ));
  }
}

/// @nodoc
abstract class _$StateOptionsCopyWith<$Res>
    implements $StateOptionsCopyWith<$Res> {
  factory _$StateOptionsCopyWith(
          _StateOptions value, $Res Function(_StateOptions) then) =
      __$StateOptionsCopyWithImpl<$Res>;
  @override
  $Res call({Concurrency? concurrency, Consistency? consistency});
}

/// @nodoc
class __$StateOptionsCopyWithImpl<$Res> extends _$StateOptionsCopyWithImpl<$Res>
    implements _$StateOptionsCopyWith<$Res> {
  __$StateOptionsCopyWithImpl(
      _StateOptions _value, $Res Function(_StateOptions) _then)
      : super(_value, (v) => _then(v as _StateOptions));

  @override
  _StateOptions get _value => super._value as _StateOptions;

  @override
  $Res call({
    Object? concurrency = freezed,
    Object? consistency = freezed,
  }) {
    return _then(_StateOptions(
      concurrency: concurrency == freezed
          ? _value.concurrency
          : concurrency // ignore: cast_nullable_to_non_nullable
              as Concurrency?,
      consistency: consistency == freezed
          ? _value.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as Consistency?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateOptions implements _StateOptions {
  const _$_StateOptions({this.concurrency, this.consistency});

  factory _$_StateOptions.fromJson(Map<String, dynamic> json) =>
      _$$_StateOptionsFromJson(json);

  @override
  final Concurrency? concurrency;
  @override
  final Consistency? consistency;

  @override
  String toString() {
    return 'StateOptions(concurrency: $concurrency, consistency: $consistency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateOptions &&
            (identical(other.concurrency, concurrency) ||
                other.concurrency == concurrency) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, concurrency, consistency);

  @JsonKey(ignore: true)
  @override
  _$StateOptionsCopyWith<_StateOptions> get copyWith =>
      __$StateOptionsCopyWithImpl<_StateOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateOptionsToJson(this);
  }
}

abstract class _StateOptions implements StateOptions {
  const factory _StateOptions(
      {Concurrency? concurrency, Consistency? consistency}) = _$_StateOptions;

  factory _StateOptions.fromJson(Map<String, dynamic> json) =
      _$_StateOptions.fromJson;

  @override
  Concurrency? get concurrency;
  @override
  Consistency? get consistency;
  @override
  @JsonKey(ignore: true)
  _$StateOptionsCopyWith<_StateOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

Etag _$EtagFromJson(Map<String, dynamic> json) {
  return _Etag.fromJson(json);
}

/// @nodoc
class _$EtagTearOff {
  const _$EtagTearOff();

  _Etag call({required String value}) {
    return _Etag(
      value: value,
    );
  }

  Etag fromJson(Map<String, Object?> json) {
    return Etag.fromJson(json);
  }
}

/// @nodoc
const $Etag = _$EtagTearOff();

/// @nodoc
mixin _$Etag {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EtagCopyWith<Etag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EtagCopyWith<$Res> {
  factory $EtagCopyWith(Etag value, $Res Function(Etag) then) =
      _$EtagCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$EtagCopyWithImpl<$Res> implements $EtagCopyWith<$Res> {
  _$EtagCopyWithImpl(this._value, this._then);

  final Etag _value;
  // ignore: unused_field
  final $Res Function(Etag) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EtagCopyWith<$Res> implements $EtagCopyWith<$Res> {
  factory _$EtagCopyWith(_Etag value, $Res Function(_Etag) then) =
      __$EtagCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$EtagCopyWithImpl<$Res> extends _$EtagCopyWithImpl<$Res>
    implements _$EtagCopyWith<$Res> {
  __$EtagCopyWithImpl(_Etag _value, $Res Function(_Etag) _then)
      : super(_value, (v) => _then(v as _Etag));

  @override
  _Etag get _value => super._value as _Etag;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Etag(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Etag implements _Etag {
  const _$_Etag({required this.value});

  factory _$_Etag.fromJson(Map<String, dynamic> json) => _$$_EtagFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'Etag(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Etag &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  _$EtagCopyWith<_Etag> get copyWith =>
      __$EtagCopyWithImpl<_Etag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EtagToJson(this);
  }
}

abstract class _Etag implements Etag {
  const factory _Etag({required String value}) = _$_Etag;

  factory _Etag.fromJson(Map<String, dynamic> json) = _$_Etag.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$EtagCopyWith<_Etag> get copyWith => throw _privateConstructorUsedError;
}

StateOperation _$StateOperationFromJson(Map<String, dynamic> json) {
  return _StateOperation.fromJson(json);
}

/// @nodoc
class _$StateOperationTearOff {
  const _$StateOperationTearOff();

  _StateOperation call(
      {required String operation, required StateOperationRequest request}) {
    return _StateOperation(
      operation: operation,
      request: request,
    );
  }

  StateOperation fromJson(Map<String, Object?> json) {
    return StateOperation.fromJson(json);
  }
}

/// @nodoc
const $StateOperation = _$StateOperationTearOff();

/// @nodoc
mixin _$StateOperation {
  String get operation => throw _privateConstructorUsedError;
  StateOperationRequest get request => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateOperationCopyWith<StateOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateOperationCopyWith<$Res> {
  factory $StateOperationCopyWith(
          StateOperation value, $Res Function(StateOperation) then) =
      _$StateOperationCopyWithImpl<$Res>;
  $Res call({String operation, StateOperationRequest request});

  $StateOperationRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$StateOperationCopyWithImpl<$Res>
    implements $StateOperationCopyWith<$Res> {
  _$StateOperationCopyWithImpl(this._value, this._then);

  final StateOperation _value;
  // ignore: unused_field
  final $Res Function(StateOperation) _then;

  @override
  $Res call({
    Object? operation = freezed,
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StateOperationRequest,
    ));
  }

  @override
  $StateOperationRequestCopyWith<$Res> get request {
    return $StateOperationRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
abstract class _$StateOperationCopyWith<$Res>
    implements $StateOperationCopyWith<$Res> {
  factory _$StateOperationCopyWith(
          _StateOperation value, $Res Function(_StateOperation) then) =
      __$StateOperationCopyWithImpl<$Res>;
  @override
  $Res call({String operation, StateOperationRequest request});

  @override
  $StateOperationRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$StateOperationCopyWithImpl<$Res>
    extends _$StateOperationCopyWithImpl<$Res>
    implements _$StateOperationCopyWith<$Res> {
  __$StateOperationCopyWithImpl(
      _StateOperation _value, $Res Function(_StateOperation) _then)
      : super(_value, (v) => _then(v as _StateOperation));

  @override
  _StateOperation get _value => super._value as _StateOperation;

  @override
  $Res call({
    Object? operation = freezed,
    Object? request = freezed,
  }) {
    return _then(_StateOperation(
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StateOperationRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateOperation implements _StateOperation {
  const _$_StateOperation({required this.operation, required this.request});

  factory _$_StateOperation.fromJson(Map<String, dynamic> json) =>
      _$$_StateOperationFromJson(json);

  @override
  final String operation;
  @override
  final StateOperationRequest request;

  @override
  String toString() {
    return 'StateOperation(operation: $operation, request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateOperation &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operation, request);

  @JsonKey(ignore: true)
  @override
  _$StateOperationCopyWith<_StateOperation> get copyWith =>
      __$StateOperationCopyWithImpl<_StateOperation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateOperationToJson(this);
  }
}

abstract class _StateOperation implements StateOperation {
  const factory _StateOperation(
      {required String operation,
      required StateOperationRequest request}) = _$_StateOperation;

  factory _StateOperation.fromJson(Map<String, dynamic> json) =
      _$_StateOperation.fromJson;

  @override
  String get operation;
  @override
  StateOperationRequest get request;
  @override
  @JsonKey(ignore: true)
  _$StateOperationCopyWith<_StateOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

StateOperationRequest _$StateOperationRequestFromJson(
    Map<String, dynamic> json) {
  return _StateOperationRequest.fromJson(json);
}

/// @nodoc
class _$StateOperationRequestTearOff {
  const _$StateOperationRequestTearOff();

  _StateOperationRequest call(
      {required String key,
      String? value,
      Etag? etag,
      Map<String, dynamic>? metaData,
      StateOptions? options}) {
    return _StateOperationRequest(
      key: key,
      value: value,
      etag: etag,
      metaData: metaData,
      options: options,
    );
  }

  StateOperationRequest fromJson(Map<String, Object?> json) {
    return StateOperationRequest.fromJson(json);
  }
}

/// @nodoc
const $StateOperationRequest = _$StateOperationRequestTearOff();

/// @nodoc
mixin _$StateOperationRequest {
  String get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  Etag? get etag => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metaData => throw _privateConstructorUsedError;
  StateOptions? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateOperationRequestCopyWith<StateOperationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateOperationRequestCopyWith<$Res> {
  factory $StateOperationRequestCopyWith(StateOperationRequest value,
          $Res Function(StateOperationRequest) then) =
      _$StateOperationRequestCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String? value,
      Etag? etag,
      Map<String, dynamic>? metaData,
      StateOptions? options});

  $EtagCopyWith<$Res>? get etag;
  $StateOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$StateOperationRequestCopyWithImpl<$Res>
    implements $StateOperationRequestCopyWith<$Res> {
  _$StateOperationRequestCopyWithImpl(this._value, this._then);

  final StateOperationRequest _value;
  // ignore: unused_field
  final $Res Function(StateOperationRequest) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? etag = freezed,
    Object? metaData = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as Etag?,
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as StateOptions?,
    ));
  }

  @override
  $EtagCopyWith<$Res>? get etag {
    if (_value.etag == null) {
      return null;
    }

    return $EtagCopyWith<$Res>(_value.etag!, (value) {
      return _then(_value.copyWith(etag: value));
    });
  }

  @override
  $StateOptionsCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $StateOptionsCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value));
    });
  }
}

/// @nodoc
abstract class _$StateOperationRequestCopyWith<$Res>
    implements $StateOperationRequestCopyWith<$Res> {
  factory _$StateOperationRequestCopyWith(_StateOperationRequest value,
          $Res Function(_StateOperationRequest) then) =
      __$StateOperationRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key,
      String? value,
      Etag? etag,
      Map<String, dynamic>? metaData,
      StateOptions? options});

  @override
  $EtagCopyWith<$Res>? get etag;
  @override
  $StateOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$StateOperationRequestCopyWithImpl<$Res>
    extends _$StateOperationRequestCopyWithImpl<$Res>
    implements _$StateOperationRequestCopyWith<$Res> {
  __$StateOperationRequestCopyWithImpl(_StateOperationRequest _value,
      $Res Function(_StateOperationRequest) _then)
      : super(_value, (v) => _then(v as _StateOperationRequest));

  @override
  _StateOperationRequest get _value => super._value as _StateOperationRequest;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? etag = freezed,
    Object? metaData = freezed,
    Object? options = freezed,
  }) {
    return _then(_StateOperationRequest(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as Etag?,
      metaData: metaData == freezed
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as StateOptions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateOperationRequest implements _StateOperationRequest {
  const _$_StateOperationRequest(
      {required this.key, this.value, this.etag, this.metaData, this.options});

  factory _$_StateOperationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_StateOperationRequestFromJson(json);

  @override
  final String key;
  @override
  final String? value;
  @override
  final Etag? etag;
  @override
  final Map<String, dynamic>? metaData;
  @override
  final StateOptions? options;

  @override
  String toString() {
    return 'StateOperationRequest(key: $key, value: $value, etag: $etag, metaData: $metaData, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StateOperationRequest &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            const DeepCollectionEquality().equals(other.metaData, metaData) &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value, etag,
      const DeepCollectionEquality().hash(metaData), options);

  @JsonKey(ignore: true)
  @override
  _$StateOperationRequestCopyWith<_StateOperationRequest> get copyWith =>
      __$StateOperationRequestCopyWithImpl<_StateOperationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateOperationRequestToJson(this);
  }
}

abstract class _StateOperationRequest implements StateOperationRequest {
  const factory _StateOperationRequest(
      {required String key,
      String? value,
      Etag? etag,
      Map<String, dynamic>? metaData,
      StateOptions? options}) = _$_StateOperationRequest;

  factory _StateOperationRequest.fromJson(Map<String, dynamic> json) =
      _$_StateOperationRequest.fromJson;

  @override
  String get key;
  @override
  String? get value;
  @override
  Etag? get etag;
  @override
  Map<String, dynamic>? get metaData;
  @override
  StateOptions? get options;
  @override
  @JsonKey(ignore: true)
  _$StateOperationRequestCopyWith<_StateOperationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
