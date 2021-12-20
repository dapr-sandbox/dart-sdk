import 'package:dapr_common/dapr_common.dart';

/// An abstract client which exposes client related information.
///
/// Will be implemented by the respective clients such as [HttpClient] and [GrpcClient].
abstract class Client<T> {
  T get client;
  String get clientHost;
  int get clientPort;
  CommunicationProtocol get communicationProtocol;
}
