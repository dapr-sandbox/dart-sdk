/// An actor interface.
abstract class ServerActor {
  /// Registor an actor
  Future<void> registerActor();
  /// Fetch a list of registered actors
  Future<List<String>> get registeredActors;
  /// initialize
  Future<void> init();
  /// Deactivate a registered actor.
  Future<void> deactivateActor(
    String actorType,
    String actorId,
  );
}
