import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/welcomeScreen');
    });
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff8CDBFF),Color(0xffD1A5F2)]),
        ),
        child: const Image(
          image: AssetImage('assets/images/splash.png'),
          width: 200,
        ),
      ),
    );
  }
}
