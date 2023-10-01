import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';
import 'package:provider/provider.dart';

import 'Core/Provider/AppProvider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(appProvider.splashScreen(),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height),
    );
  }
}
