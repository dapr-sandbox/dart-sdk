import 'package:freezed_annotation/freezed_annotation.dart';

part 'pub_sub_models.freezed.dart';
part 'pub_sub_models.g.dart';

@freezed
class PubSubRoute with _$PubSubRoute {
  const factory PubSubRoute({
    /// The component name configured in a component yaml file.
    @JsonKey(name: 'pubsubname') required String pubSubName,

    /// The name of the topic to Publish/Subscribe to.
    required String topic,

    /// The http route name for associated with this topic.
    ///
    /// This name is primarily used for a Http server where the event from the
    /// topic will forwared to this http route built automatically.
    required String route,

    /// Metadata to be passed to the dapr. e.g. rawPayload.
    /// https://docs.dapr.io/developing-applications/building-blocks/pubsub/pubsub-raw/
    @Default({}) Map<String, String> metadata,
  }) = _PubSubRoute;

  factory PubSubRoute.fromJson(Map<String, dynamic> json) =>
      _$PubSubRouteFromJson(json);
}

@freezed
class PubSubResponse with _$PubSubResponse {
  const factory PubSubResponse.success() = Success;
  const factory PubSubResponse.drop() = Drop;
  const factory PubSubResponse.retry() = Retry;
  const factory PubSubResponse.error() = Error;
}

@freezed
class CloudEvent with _$CloudEvent {
  const factory CloudEvent({
    required String id,
    required Uri source,
    @JsonKey(name: 'specversion') required String specVersion,
    required String type,
    @JsonKey(name: 'datacontenttype') String? dataContentType,
    Object? data,
    @JsonKey(name: 'dataschema') Uri? dataSchema,
    String? subject,
    DateTime? time,
  }) = _CloudEvent;

  factory CloudEvent.fromJson(Map<String, dynamic> json) =>
      _$CloudEventFromJson(json);
}
