import 'package:freezed_annotation/freezed_annotation.dart';

part 'bindings_models.g.dart';
part 'bindings_models.freezed.dart';

@freezed
class OutputBindingEvent with _$OutputBindingEvent {
  const factory OutputBindingEvent({
    required String data,
    @Default({}) Map<String, String> metadata,
    required String operation,
  }) = _OutputBindingEvent;

  factory OutputBindingEvent.fromJson(Map<String, dynamic> json) =>
      _$OutputBindingEventFromJson(json);
}

@freezed
class OutputBindingEventResponse with _$OutputBindingEventResponse {
  const factory OutputBindingEventResponse({
    required String data,
    required Map<String, String> metadata,
  }) = _OutputBindingEventResponse;

  factory OutputBindingEventResponse.fromJson(Map<String, dynamic> json) =>
      _$OutputBindingEventResponseFromJson(json);
}
