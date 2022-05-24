
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:odc/views/BoardScreen.dart';

class SplashScreen extends StatelessWidget {
  Map<int, Widget> output = {1: OnBoardingScreen()};

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AnimatedSplashScreen(
          duration: 3000,
          splash:Image(image:AssetImage('assets/images/logo.png',) ,height: 250,width: 250) ,
          splashIconSize: 150,
          nextScreen: OnBoardingScreen(),
          splashTransition: SplashTransition.fadeTransition,


          backgroundColor: Colors.white));

  }
}
