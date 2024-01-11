import 'package:flutter/material.dart';
import 'package:weatherapp/Home/View/home.dart';
import 'package:weatherapp/Routes/route_names.dart';
import 'package:weatherapp/Routes/routes.dart';
import 'package:weatherapp/Splash/View/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RouteName.splashView,
        onGenerateRoute: Routes.genrateRoutes,
        home: Home());
  }
}
