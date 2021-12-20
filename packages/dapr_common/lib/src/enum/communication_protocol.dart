/// Communication protocol to be used for communicating with the dapr sidecar process/container.
enum CommunicationProtocol {
  http,
  grpc,
}

extension CommunicationProtocolExt on CommunicationProtocol {
  String get name => toString().split('.')[1];
  String get nameUpper => toString().toUpperCase().split('.')[1];
  String get nameLower => toString().toLowerCase().split('.')[1];
}
