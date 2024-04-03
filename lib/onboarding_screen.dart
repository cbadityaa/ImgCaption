import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snapspeak/intro_screens/intro_page_1.dart';
import 'package:snapspeak/intro_screens/intro_page_2.dart';
import 'package:snapspeak/upload_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of page
  PageController _controller = PageController();

  //keep track of last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 1);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
          ],
        ),

        //dot indicators
        Container(
          alignment: Alignment(0, -0.8),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: SlideEffect(activeDotColor: Color(0xFF00288F)),
          ),
        ),
        Container(
            alignment: Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //skip
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF)),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF00288F)),
                        ),
                      ),

                //next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return UploadPage();
                          }));
                        },
                        child: CircleAvatar(
                            backgroundColor: Color(0xFF00288F),
                            radius: 23,
                            child: IconButton(
                              padding: EdgeInsets.all(4.0),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return UploadPage();
                                }));
                              },
                              icon: const Icon(Icons.check),
                              color: Colors.white,
                              iconSize: 30,
                            )),
                      )
                    : GestureDetector(
                        child: CircleAvatar(
                            backgroundColor: Color(0xFF00288F),
                            radius: 23,
                            child: IconButton(
                              padding: EdgeInsets.all(4.0),
                              onPressed: () {
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                              },
                              icon: const Icon(Icons.navigate_next_outlined),
                              color: Colors.white,
                              iconSize: 40,
                            ))),
              ],
            )),
      ],
    ));
  }
}
