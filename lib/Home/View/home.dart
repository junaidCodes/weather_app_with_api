import 'package:flutter/material.dart';
import 'package:weatherapp/Data/Network/network_api_service.dart';
import 'package:weatherapp/Home/Components/custom_text.dart';
import 'package:weatherapp/Home/Components/forecast.dart';
import 'package:weatherapp/Home/Components/today_weather_info.dart';
import 'package:weatherapp/Model/weather_api_model.dart';
import 'package:weatherapp/Routes/route_names.dart';
import 'package:weatherapp/ViewModel/weather_view_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  weatherViewModel weatherCall = weatherViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Txt(
              text: "Today",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.searchView);
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Txt(text: "Punjab, pakistan"),
                Row(
                  children: [Txt(text: "Monday , Jan 01,2024")],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FutureBuilder<WeatherModel>(
                            future: weatherCall.fetchWeatherApi(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              } else {
                                WeatherModel snapData = snapshot.data!;
                                return Text(snapData.coord.lat.toString());
                              }
                            }),
                        Txt(
                          text: "o",
                          fontSize: 20,
                        ),
                        Txt(
                          text: "C",
                          fontSize: 24,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Txt(
                      text: "clear sky",
                      fontSize: 16,
                      color: Colors.grey,
                    )
                  ],
                ),
                TodayWeatherInfo(),
                SizedBox(
                  height: 20,
                ),
                Txt(
                  text: "7 days Forecast",
                  fontWeight: FontWeight.bold,
                ),
                Expanded(child: Forecast()),
              ],
            ),
          ),
        ));
  }
}
