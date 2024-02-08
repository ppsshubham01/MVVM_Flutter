

import 'package:mvvm/data/response/status.dart';

//Handle app Api's Response
class ApiResponse<T>{
  Status? status ;
  T? data ;
  String? message ;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status =Status.LOADING;

  ApiResponse.completed() : status = Status.COMPLETED;

  ApiResponse.error() : status = Status.ERROR; //this is for app focusable error handling method : app_excaptions.dart

  @override
  String toString(){
    return "Status : $status \n Message: $message \n  Data : $data" ;
  }
}