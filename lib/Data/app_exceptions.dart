class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class fetchDataException extends AppExceptions {
  fetchDataException([String? message])
      : super(message, 'Error during communication');

}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message])
      : super(message, 'Error during communication');

}
class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException([String? message])
      : super(message, 'Error during communication');

}
