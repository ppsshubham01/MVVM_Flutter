

class AppException implements Exception{

  final _message ;
  final _prifix ;
  AppException([this._message, this._prifix]);

  String toString(){
    return '$_prifix$_message' ;
  }
}

class FetchDataException extends AppException{
  //Take a long time for fetchingData min-duration-10Sec
  FetchDataException([String? message]) : super(message, 'Error During Communication');
}

class BadRequestException extends AppException{
  //ReuestToken Issues or invalid Link
  BadRequestException([String? message]) : super(message, 'Invalid Request');
}

class UnAuthorisedException extends AppException{

  UnAuthorisedException([String? message]) : super(message, 'UnAuthorised Request');
}

class InvalidInputException extends AppException{

  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}