import 'dart:convert';

import 'package:dapr_common/dapr_common.dart';
import 'package:http/http.dart' as http;

import '../../abstractions/client.dart';

///
/// A http client to access Dapr Side Car.
///
/// Prefer using grpc client as much as posisble for performance reasons.
///
/// An ideal use case to use a Http Client is when the app is deployed as web app.
///
class DaprHttpClient implements Client<http.Client> {
  @override
  late final http.Client client;
  @override
  final String clientHost;
  @override
  final int clientPort;
  @override
  final CommunicationProtocol communicationProtocol =
      CommunicationProtocol.http;

  late final String _daprBaseUrl;

  DaprHttpClient({
    required this.clientHost,
    required this.clientPort,
  }) {
    // Initialize the http client
    // The http package handles the browser or io based client automatically
    client = http.Client();

    // Set up the based URL for accesing the Dapr api over http

    var _clientUrl = '$clientHost:$clientPort/${DaprConf.defDaprApiVersion}';

    // Before assigning, verify if the provided host contains the protocol.
    // If not append the http protocol.
    if (!_clientUrl.startsWith(RegExp('^(http:)|(https:)'))) {
      _clientUrl = 'http://$_clientUrl';
    }
    _daprBaseUrl = _clientUrl;
  }

  /// Should be used by all the http client api's to form the respective URl's
  String get daprBaseUrl => _daprBaseUrl;

  /// Works as the main method to execute all the http calls to the Dapr api.
  /// All the internal clients implementing http based api's should use this
  /// method.
  ///
  /// If not possible the reason should be documented in the respective method.
  ///
  /// Query params should be added to the [apiUrl] by the caller. This is
  /// because the specification for query params varies for various building
  /// blocks.
  ///
  /// The types of headers and body is based on the definitions mentioned in
  /// the http package from dart.
  ///
  /// Check this class for the more details.
  /// https://github.com/dart-lang/http/blob/master/lib/src/base_client.dart#L20
  Future<http.Response> executeDaprApiCall({
    required String apiUrl,
    required HttpMethod httpMethod,
    Map<String, String>? headers,
    Object? body,
  }) async {
    String _contentType = 'Content-Type';
    headers ??= {};
    // Set up the content-type for the request if its not already provided.
    // Do this only if the body is not null. If the body is null then no need to set the content type in headers.
    if (body != null && headers[_contentType] == null) {
      if (body is String) {
        headers[_contentType] = "text/plain; charset=UTF-8";
      } else if (body is Map<String, dynamic>) {
        headers[_contentType] = "application/json";
        // This needs to be configurable.
        body = removeNullsFromMap(body);
        body = jsonEncode(body);
      } else if (body is List<int>) {
        headers[_contentType] = 'application/octet-stream';
      } else {
        headers[_contentType] = "text/plain; charset=UTF-8";
      }
    }

    // Prepare the daprApiUrl based on the partial path received.
    // Here we assume if the [apiUrl] starts with http or https then the provided url is used as it is.
    // Otherwise the provided url is partial and hence the base url is appended.
    final _finalApiUrl = Uri.parse(
      apiUrl.startsWith(RegExp('^(http:)|(https:)'))
          ? apiUrl
          : '$_daprBaseUrl$apiUrl',
    );
    try {
      final http.Response response;
      // Make the daprApi call based on the method.
      switch (httpMethod) {
        case HttpMethod.get:
          response = await client.get(_finalApiUrl, headers: headers);
          break;
        case HttpMethod.post:
          response =
              await client.post(_finalApiUrl, headers: headers, body: body);

          break;
        case HttpMethod.put:
          response =
              await client.put(_finalApiUrl, headers: headers, body: body);
          break;
        case HttpMethod.delete:
          response =
              await client.delete(_finalApiUrl, headers: headers, body: body);
          break;
        default:
          response = await client.get(_finalApiUrl, headers: headers);
          break;
      }
      if (response.statusCode >= 400) {
        // TODO: Decide how to throw an exception and what information needs to
        //  be passed.
      }

      // Note we do not parse the response here.
      // It is the responsibility of the caller to parse the reponse and convert
      // it to the internal object types.
      return response;
    } catch (e) {
      print(e);
      // TODO: Decide how to throw an exception and what information needs to
      //  be passed.
      throw '';
    }
  }
}
