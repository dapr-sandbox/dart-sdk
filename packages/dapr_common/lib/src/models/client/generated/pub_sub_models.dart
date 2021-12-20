import 'package:freezed_annotation/freezed_annotation.dart';

part 'pub_sub_models.freezed.dart';
part 'pub_sub_models.g.dart';

@freezed
class PublishMetadata with _$PublishMetadata {
  const factory PublishMetadata({
    int? ttlInSeconds,
    @Default(false) bool rawPayload,
  }) = _PublishMetadata;

  factory PublishMetadata.fromJson(Map<String, dynamic> json) =>
      _$PublishMetadataFromJson(json);
}
