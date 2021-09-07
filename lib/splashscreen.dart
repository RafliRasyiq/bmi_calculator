import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bmi_calculator/screen/home.dart';
import 'package:bmi_calculator/constants/app_constant.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.calculate,
              size: 100.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "BMI Calculator",
              style: TextStyle(
                color: accentHexColor,
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
