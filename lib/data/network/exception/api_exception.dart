class AppException implements Exception {
  final dynamic _message;
  final dynamic _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class FetchException extends AppException {
  FetchException([String? message]) : super(message, "");
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, "Kesalahan: ");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Permintaan Tidak Valid: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message])
    : super(message, "Input tidak valid: ");
}
