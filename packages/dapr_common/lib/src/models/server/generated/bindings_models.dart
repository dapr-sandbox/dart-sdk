import 'package:freezed_annotation/freezed_annotation.dart';

part 'bindings_models.g.dart';
part 'bindings_models.freezed.dart';

@freezed
class BindingEvent with _$BindingEvent {
  const factory BindingEvent({
    required String data,
    @Default({}) Map<String, dynamic> metadata,
  }) = _BindingEvent;

  factory BindingEvent.fromJson(Map<String, dynamic> json) =>
      _$BindingEventFromJson(json);
}
