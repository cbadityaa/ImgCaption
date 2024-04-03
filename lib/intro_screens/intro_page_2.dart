import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/Voice assistant-rafiki.png',
            alignment: Alignment(0, -0.3),
          ),
          Text(
            'Instantly craft appropriate descriptions in text and audio.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          )
        ]));
  }
}
