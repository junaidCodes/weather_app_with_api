import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/Home/Components/Search/View/search_view.dart';
import 'package:weatherapp/Home/View/home.dart';
import 'package:weatherapp/Routes/route_names.dart';
import 'package:weatherapp/Splash/View/splash_view.dart';

class Routes {
  static Route<dynamic> genrateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashView:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
        );

      case RouteName.home:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
      case RouteName.searchView:
        return MaterialPageRoute(
          builder: (context) => SearchView(),
        );

      default:
        {
          return MaterialPageRoute(
              builder: ((context) => Scaffold(
                    body: Container(
                      child: Center(
                        child: Text("No Route"),
                      ),
                    ),
                  )));
        }
    }
  }
}
