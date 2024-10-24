class WebException implements Exception {
  @override
  String toString() => runtimeType.toString();

  factory WebException.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return BadRequestException();
      case 401:
        return UnauthorizedException();
      case 403:
        return ForbiddenException();
      case 404:
        return NotFoundException();
      case 408:
        return RequestTimeoutException();
      case 409:
        return ConflictException();
      default:
        {
          if (statusCode >= 500 && statusCode < 600) {
            return ServerErrorException();
          } else {
            return WebStatusErrorException(statusCode);
          }
        }
    }
  }
}

class NoInternetException implements WebException {}

class ConnectionRefusedException implements WebException {}

class BadRequestException implements WebException {}

class UnauthorizedException implements WebException {}

class ForbiddenException implements WebException {}

class NotFoundException implements WebException {}

class RequestTimeoutException implements WebException {}

class ConflictException implements WebException {}

class ServerErrorException implements WebException {}

class WebStatusErrorException implements WebException {
  final int statusCode;

  WebStatusErrorException(this.statusCode);
}

class UnknownWebException implements WebException {
  final dynamic error;

  UnknownWebException(this.error);
}
