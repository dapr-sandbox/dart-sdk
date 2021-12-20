import 'package:dapr_common/dapr_common.dart';

abstract class ClientActor<T> {
  /// The client for the chose protocol.
  T get client;

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#invoke-actor-method
  ///
  Future<Object> invoke({
    HttpMethod method,
    String actorType,
    String actorId,
    String methodName,
    dynamic body,
  });

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#actor-state-transactions
  ///
  /// Note that this operation is dependant on a using state store component that supports multi-item transactions.
  Future<void> stateTransaction({
    String actorType,
    String actorId,
    List<StateOperation> operations,
  });

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#get-actor-state
  ///
  /// TODO: Think about making the return as Union of Map and String. Perhaps
  ///  using Freezed!
  ///
  Future<Map<String, dynamic>> stateGet(
      {String actorType, String actorId, String key});

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#create-actor-reminder
  ///
  Future<void> reminderCreate({
    String actorType,
    String actorId,
    String name,
  });

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#delete-actor-reminder
  ///
  Future<void> reminderDelete({
    String actorType,
    String actorId,
    String name,
  });

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#create-actor-timer
  ///
  Future<void> timeerCreate({
    String actorType,
    String actorId,
    String name,
  });

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#delete-actor-timer
  ///
  Future<void> timerDelete({
    String actorType,
    String actorId,
    String name,
  });

  /// Based on the following api definition.
  ///
  /// https://docs.dapr.io/reference/api/actors_api/#get-registered-actors
  ///
  Future<Object> getActors();
}
