import 'package:freezed_annotation/freezed_annotation.dart';

part 'secret_models.freezed.dart';
part 'secret_models.g.dart';

@freezed
class SecretResponse with _$SecretResponse {
  const factory SecretResponse({
    required Map<String, dynamic> secrets,
  }) = _SecretResponse;
  factory SecretResponse.fromJson(Map<String, dynamic> json) =>
      _$SecretResponseFromJson(json);
}

// @freezed
// class BulkSecretResponse with _$BulkSecretResponse {
//   const factory BulkSecretResponse({
//     required Map<String, SecretResponse> secrets,
//   }) = _BulkSecretResponse;
//   factory BulkSecretResponse.fromJson(Map<String, dynamic> json) =>
//       _$BulkSecretResponseFromJson(json);
// }
