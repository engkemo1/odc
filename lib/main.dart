import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:odc/routes.dart';
import 'controllers/auth.dart';
import 'views/Courses/New_courses.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(AuthController());

  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ODC',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      getPages: Routes.routes,
      initialRoute: Routes.splashScreen,
//home:  SplashScreen(),
    );
  }
}




