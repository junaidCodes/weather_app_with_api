import 'package:flutter/material.dart';
import 'package:weatherapp/Home/Components/custom_text.dart';
import 'package:weatherapp/Model/weather_api_model.dart';
import 'package:weatherapp/ViewModel/weather_view_model.dart';

class TodayWeatherInfo extends StatelessWidget {
  const TodayWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    weatherViewModel viewModel = weatherViewModel();

    return FutureBuilder<WeatherModel>(
        future: viewModel.fetchWeatherApi(),
        builder: (BuildContext context, snapshot) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade300]),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            // Text(viewModel.fetchWeatherApi());
                            Txt(text: "feel like"),
                            Txt(
                                text: snapshot.data!.main.feelsLike.toString() +
                                    " oC"),
                            // Txt(text: viewModel.fetchWeatherApi()),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: VerticalDivider(
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          children: [
                            Txt(text: "Pressure"),
                            Txt(
                                text: snapshot.data!.main.pressure.toString() +
                                    "hPa"),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: VerticalDivider(
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          children: [
                            Txt(text: "Humidity"),
                            Txt(
                                text: snapshot.data!.main.humidity.toString() +
                                    "%"),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Txt(text: "Wind"),
                            Txt(
                                text: snapshot.data!.wind.speed.toString() +
                                    "m/s"),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: VerticalDivider(
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          children: [
                            Txt(text: "Clouds"),
                            Txt(
                                text:
                                    snapshot.data!.clouds.all.toString() + "%"),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: VerticalDivider(
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          children: [
                            Txt(text: "Visibility"),
                            Txt(
                                text: snapshot.data!.visibility.toString() +
                                    "meter"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
