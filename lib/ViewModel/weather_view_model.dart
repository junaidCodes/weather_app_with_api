import 'package:weatherapp/Data/Network/base_api_service.dart';
import 'package:weatherapp/Data/Network/network_api_service.dart';
import 'package:weatherapp/Home/Components/api_url.dart';
import 'package:weatherapp/Model/weather_api_model.dart';

class weatherViewModel {
  final weatherRep = NetWorkApiService();

  Future<WeatherModel> fetchWeatherApi() async {
    final response = await weatherRep.fetchWeatherApi();

    print("resp");
    print(response.id);

    return response;
  }
}
