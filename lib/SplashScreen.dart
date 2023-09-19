import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset("assets/Images/splash.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height),
    );
  }
}
