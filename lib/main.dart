import 'package:flutter/material.dart';
import 'package:odc/views/Authentication/SignUp.dart';
import 'package:odc/views/Authentication/LogIn.dart';
import 'package:odc/views/Catigories.dart';
import 'package:odc/views/HomeScreen.dart';
import 'package:odc/views/MyCourses.dart';
import 'package:odc/views/Splash_Screen.dart';
import 'package:odc/views/Courses.dart';
import 'package:odc/views/forgtPassword/CreatPassword.dart';
import 'package:odc/views/forgtPassword/ForgetPassword.dart';
import 'package:odc/views/forgtPassword/VerifyYourEmail.dart';
import 'package:odc/widget/NavBar.dart';

import 'New_courses.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/sign_in': (context) => SignIn(),
          '/sign_up': (context) => SignUp(),
          '/create_password': (context) => CreatePassword(),
           '/verify_email': (context) => VerifyEmail(),
           '/forget_password': (context) => ForgetPassword(),
          '/home_screen':(context) => HomeScreen(),
          '/nav_bar':(context) => NavBar(),
          '/categories':(context) => Categories(),
          '/my_courses':(context) => MyCourses(),
          '/new_courses':(context) => NewCourses(),



        }    );
  }
}


