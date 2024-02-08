import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart%20';
import 'package:mvvm/data/app_excaptions.dart';
import 'package:mvvm/data/network/baseApiServices.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    responseJson; //direct return why this!
  }

  @override
  Future getPostApiResponse(String url,dynamic data) async {
    dynamic responseJson;
    try {
      Response response = await post(
          Uri.parse(url,),
          body: data
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 500:
        throw BadRequestException(response.body.toString());

      case 401:
        throw UnAuthorisedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error accure while communicatig with server:StateCode:-${response.statusCode}');
    }
  }
}
