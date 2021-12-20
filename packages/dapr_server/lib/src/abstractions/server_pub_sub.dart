import 'package:dapr_common/dapr_common.dart';

/// Provides the necessary api to subscribe to different topics of a pubsub
/// component.
abstract class ServrePubSub<T> {
  /// The main server instance running the server.
  T get server;

  /// Registers the provided [callback] as the subscriber for the given [topic]
  /// in the publish/subscribe coponent registered under the [pubSubName]. The
  /// [route] is used as a REST end point in case of http server.
  Future<void> subscribe({
    /// The name of the publish/subscribe component.
    required String pubSubName,

    /// The name of the topic to be subscribed.
    required String topic,

    /// The call back function which will be called with the event data
    required PubSubCallback callback,

    /// The name fo the app route be built using the [callback].
    String? route,

    /// Setting [rawEvents] to true means that the subscriber receives
    /// rawEvents instead of a CloudEvent.
    /// https://docs.dapr.io/developing-applications/building-blocks/pubsub/pubsub-raw/
    bool rawEvents = false,
  });
}
