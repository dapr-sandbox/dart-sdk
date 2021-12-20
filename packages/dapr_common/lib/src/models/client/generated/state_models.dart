import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/state_option_enums.dart';
import '../../../models/client/client_type_definitions.dart';


part 'state_models.freezed.dart';
part 'state_models.g.dart';

/// The definition is based on the options to be passed to save state method
/// of the Dapr State api.
///
/// https://docs.dapr.io/reference/api/state_api/#request-body
@freezed
class SaveStateItem with _$SaveStateItem {
  factory SaveStateItem({
    required String key,
    required dynamic value,
    String? etag,
    // TODO: following fields should be updated after properly understanding 
    //  the api
    //
    // dynamic? metadata,
    // StateOptions options,
  }) = _SaveStateItem;

  factory SaveStateItem.fromJson(Map<String, dynamic> json) =>
      _$SaveStateItemFromJson(json);
}

/// The definition is based on the response definition provided in Dapr State management api
/// Check the response section.
///
/// https://docs.dapr.io/reference/api/state_api/#example-2
@freezed
class BulkStateItem with _$BulkStateItem {
  factory BulkStateItem({
    required String key,
    required dynamic data,
    String? etag,
  }) = _BulkStateItem;

  factory BulkStateItem.fromJson(Map<String, dynamic> json) =>
      _$BulkStateItemFromJson(json);
}

@freezed
class StateOptions with _$StateOptions {
  const factory StateOptions({
    Concurrency? concurrency,
    Consistency? consistency,
  }) = _StateOptions;

  factory StateOptions.fromJson(Map<String, dynamic> json) =>
      _$StateOptionsFromJson(json);
}

@freezed
class Etag with _$Etag {
  const factory Etag({
    required String value,
  }) = _Etag;
  factory Etag.fromJson(Map<String, dynamic> json) => _$EtagFromJson(json);
}

@freezed
class StateOperation with _$StateOperation {
  const factory StateOperation({
    required String operation,
    required StateOperationRequest request,
  }) = _StateOperation;
  factory StateOperation.fromJson(Map<String, dynamic> json) =>
      _$StateOperationFromJson(json);
}

@freezed
class StateOperationRequest with _$StateOperationRequest {
  const factory StateOperationRequest({
    required String key,
    String? value,
    Etag? etag,
    StateMetaData? metaData,
    StateOptions? options,
  }) = _StateOperationRequest;

  factory StateOperationRequest.fromJson(Map<String, dynamic> json) =>
      _$StateOperationRequestFromJson(json);
}
