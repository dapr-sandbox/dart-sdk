import 'package:dapr_client/dapr_client.dart';

void main(List<String> arguments) async {
  final daprClient = DaprClient(daprPort: 3500);

  // Save a new state
  await daprClient.state.save(
    storeName: "state-redis",
    stateObjects: [SaveStateItem(key: 'key-1', value: 'value-1')],
  );

  // Save additional key value pairs
  await daprClient.state.save(
    storeName: "state-redis",
    stateObjects: [
      SaveStateItem(key: 'key-2', value: 'value-2'),
      SaveStateItem(key: 'key-3', value: 'value-3'),
    ],
  );

  // Retrieve and print an existing state.
  final stateKey2 =
      await daprClient.state.get(storeName: 'state-redis', key: 'key-2');

  print("======================================");
  print("State value for key-2 is $stateKey2");
  print("======================================");

  // Fetch bulk state key-value pairs.
  final allKeys = await daprClient.state
      .getBulk(storeName: 'state-redis', keys: ['key-1', 'key-3']);

  print("======================================");
  print("Bulk Key value pair is is $allKeys");
  print("======================================");

  // Perform transactions on state store
  await daprClient.state.transaction(storeName: 'state-redis', operations: [
    StateOperation(
      operation: 'upsert',
      request: StateOperationRequest(key: 'key-1', value: 'updated-value-1'),
    ),
    StateOperation(
      operation: 'upsert',
      request: StateOperationRequest(key: 'key-2', value: 'updated-value-2'),
    ),
    StateOperation(
      operation: 'delete',
      request: StateOperationRequest(key: 'key-3'),
    ),
  ]);

  // verify the transaction result
  final allKeys2 = await daprClient.state
      .getBulk(storeName: 'state-redis', keys: ['key-1', 'key-2']);
  print("======================================");
  print("Bulk Key value pair is is $allKeys2");
  print("======================================");

  // delete existing key-value pairs
  await daprClient.state.delete(storeName: 'state-redis', key: 'key-1');
  await daprClient.state.delete(storeName: 'state-redis', key: 'key-2');
}


// dapr run --app-id myapp --dapr-http-port 3500 --dapr-grpc-port 50000 --components-path ./components dart run