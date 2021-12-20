import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/http_method.dart';

part 'invoker_models.freezed.dart';
part 'invoker_models.g.dart';

@freezed
class InvokerCallbackContent with _$InvokerCallbackContent {
  const factory InvokerCallbackContent({
    String? body,
    Map<String, String>? query,
    InvokerCallbackMetadata? metadata,
  }) = _InvokerCallbackContent;

  factory InvokerCallbackContent.fromJson(Map<String, dynamic> json) =>
      _$InvokerCallbackContentFromJson(json);
}

@freezed
class InvokerCallbackMetadata with _$InvokerCallbackMetadata {
  const factory InvokerCallbackMetadata({
    String? contentType,
  }) = _InvokerCallbackMetadata;

  factory InvokerCallbackMetadata.fromJson(Map<String, dynamic> json) =>
      _$InvokerCallbackMetadataFromJson(json);
}

@freezed
class InvokerCallbackOptions with _$InvokerCallbackOptions {
  const factory InvokerCallbackOptions({required HttpMethod method}) =
      _InvokerCallbackOptions;

  factory InvokerCallbackOptions.fromJson(Map<String, dynamic> json) =>
      _$InvokerCallbackOptionsFromJson(json);
}
