import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';
import 'package:odc/views/Authentication/LogIn.dart';

class   OnBoardingScreen extends StatelessWidget {
  static const routeName = "/Board";

  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/images/Board1.jpg",
      title: "Learn a lot of courses \n in Orange Education",
      desc:
          "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua. ",
    ),
    OnbordingData(
      imagePath: "assets/images/Board2.png",
      title: "Learn a lot of courses \n in Orange Education",
      desc:
          "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua. ",
    ),
    OnbordingData(
        imagePath: "assets/images/Board3.png",
        title: "Learn a lot of courses \n in Orange Education",
        desc:
            "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor\n incididunt ut labore et dolore magna aliqua."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(list, MaterialPageRoute(builder: (context) => SignIn()),
          MaterialPageRoute(builder: (context) => SignIn())),
    );
  }
}
