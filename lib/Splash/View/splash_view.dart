import 'package:flutter/material.dart';
import 'package:weatherapp/Home/Components/custom_text.dart';
import 'package:weatherapp/Home/View/home.dart';
import 'package:weatherapp/Routes/route_names.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteName.home, (route) => false);

      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => Home(),
      //     )
      //     );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Txt(text: "texfhuht"),
      ),
    );
  }
}
