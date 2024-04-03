import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapspeak/main.dart';
import 'package:snapspeak/onboarding_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CircleAvatar(
            backgroundColor: Color(0xFF00288F),
            radius: 90,
            child: Text(
              'Snap\'Speak',
              style: TextStyle(
                  fontFamily: 'JollyLodger',
                  fontSize: 38,
                  color: Color(0xFFFFFFFF)),
            ),
          ),
        ),
      ),
    );
  }
}
