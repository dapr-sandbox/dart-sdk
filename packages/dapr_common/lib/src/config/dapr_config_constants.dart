import '../../dapr_common.dart';

///
/// ref: https://github.com/dapr/python-sdk/blob/master/dapr/conf/global_settings.py
///
class DaprConf {
  static const String defAppHost = "127.0.0.1";
  static const String defDaprHost = "127.0.0.1";
  static const int defDaprHttpPort = 3500;
  static const int defDaprGrpcPort = 50001;
  static const String defDaprApiVersion = "v1.0";
  static const CommunicationProtocol defCommunicationProtocol =
      CommunicationProtocol.http;
  static const int defHttpAppPort = 3000;
  static const int defGrpcAppPort = 3010;
  static const int defHttpTimeout = 60;
}
