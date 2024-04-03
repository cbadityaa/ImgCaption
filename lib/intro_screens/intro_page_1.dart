import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/Image upload-rafiki (1).png',
            alignment: Alignment(0, -0.3),
          ),
          Text(
            'Upload an image or seize it in real-time with just a click.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          )
        ]));
  }
}
