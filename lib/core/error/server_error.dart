class ServerError implements Exception {
  final int? statusCode;
  final String? message;
  const ServerError({
    this.statusCode,
    this.message,
  });
}
