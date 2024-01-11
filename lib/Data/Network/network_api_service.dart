import 'dart:convert';

import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:weatherapp/Data/Network/base_api_service.dart';
import 'package:weatherapp/Data/app_exceptions.dart';
import 'package:weatherapp/Model/weather_api_model.dart';

class NetWorkApiService {
  Future<WeatherModel> fetchWeatherApi() async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid=179b060e958d6fef8a9366a689fdf250';

    dynamic response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      print("this is response");
      print(response);
      return WeatherModel.fromJson(body);
    } else {
      return WeatherModel.fromJson({});

      // throw Exception('facing error');
    }

    // return returnResponse(response);
  }
}

@override
Future getPostApiRespose(url, data) async {
  dynamic responseJson;

  try {
    final response =
        await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
    return responseJson = returnResponse(response);
  } on SocketException {
    fetchDataException("No internet connection");
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;

    case 400:
      BadRequestException(response.body.toString());

    case 500:
    case 404:
      UnAuthorizedException("user is not authorized");

    default:
      throw fetchDataException(
          'Error while  communicating server' + response.statusCode.toString());
  }
}
