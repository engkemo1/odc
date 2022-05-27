import 'package:get/get.dart';
import 'package:odc/views/Authentication/LogIn.dart';
import 'package:odc/views/Authentication/SignUp.dart';
import 'package:odc/views/BoardScreen.dart';
import 'package:odc/views/CourseExam/Course_Exam1.dart';
import 'package:odc/views/Courses/CourseDetails.dart';
import 'package:odc/views/HomeScreen.dart';
import 'package:odc/views/Profile.dart';
import 'package:odc/views/Splash_Screen.dart';

import 'controllers/Course_controller.dart';
import 'controllers/Home-controller.dart';
import 'controllers/Question_Controller.dart';
import 'controllers/auth.dart';

class Routes {
  static const splashScreen = "/splashScreen";
  static const onBoardingScreen = "/onBoardingScreen";
  static const signUpScreen = "/signUpScreen";
  static const loginScreen = "/loginScreen";
  static const homeScreen = "/homeScreen";
  static const profileScreen = "/profileScreen";
  static const mainScreen = "/mainScreen";
  static const categoriesScreen = "/categoriesScreen";
  static const courseDetailsScreen = "/courseDetailsScreen";
  static const courseExamScreen = "/courseExamScreen";
  static const questionScreen = "/questionScreen";
  static final routes = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
    ),

    GetPage(
        name: loginScreen,
        page: () => SignIn(),
        transition: Transition.rightToLeft,
        transitionDuration: Duration(milliseconds: 700),
        binding: AuthBinding()),
    GetPage(
        name: signUpScreen,
        page: () => SignUp(),
        transition: Transition.rightToLeft,
        transitionDuration: Duration(milliseconds: 700),
        bindings: [
          AuthBinding(),
        ]),
    // GetPage(
    //   name: mainScreen,
    //   page: () => MainScreen(),
    //   bindings: [MainBinding(), AuthBinding()],
    // ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
        name: profileScreen,
        page: () => Profile(),
        transition: Transition.rightToLeft,
        binding: AuthBinding()),

    GetPage(
        name: courseDetailsScreen,
        transition: Transition.rightToLeft,
        page: () => CourseDetails(),
        binding: MainBinding()),

    GetPage(
        name: questionScreen,
        transition: Transition.fadeIn,
        page: () => CourseExam1(),
        binding: QuestionBinding()),
  ];
}

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AuthController());
  }
}

class MainBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
    Get.put(CourseController());



  }

}


class QuestionBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(QuestionController(),permanent: true);
  }
}