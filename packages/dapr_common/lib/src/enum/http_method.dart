/// Enum defining the allowed http methods for an Http client
enum HttpMethod {
  get,
  put,
  post,
  delete,
}

extension HttpMethodExt on HttpMethod {
  String get name => toString().split('.')[1];
  String get nameUpper => toString().toUpperCase().split('.')[1];
  String get nameLower => toString().toLowerCase().split('.')[1];
}
