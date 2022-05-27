import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:odc/models/user_model.dart';
import 'package:odc/views/Authentication/LogIn.dart';
import 'package:odc/views/HomeScreen.dart';

import '../Utils/constants.dart';
import '../api _services/PostMethods.dart';
import '../models/Login_model.dart';

class AuthController extends GetxController {
  final GetStorage storage = GetStorage();
  RegisterModel? registerModel;
  LoginResponseModel? loginModel;
  bool isVisibilty = false;
  bool isChecked = false;
  bool isLoading = false;

  void visibility() {
    isVisibilty = !isVisibilty;
    update();
  }

  void checked() {
    isChecked = !isChecked;
    update();
  }

  Future registerMethod(
    String name,
    String email,
    String password,
    String phone,
    String address,
  ) async {
    isLoading = true;
    update();
    await PostMethods().registerPostMethod(data: {
      "name": name,
      "email": email,
      "password": password,
      "phone": phone,
      "address": address
    }).then((value) {
      registerModel = value;
      if (registerModel!.success == true &&
          registerModel != null) {
        storage.write(accessTokenKEY, registerModel!.data!.accessToken);
        storage.write(
            refreshTokenKEY, registerModel!.data!.refreshToken);
        storage.write(KtokenCreatedAt, DateTime.now().toString());
        Get.to(HomeScreen());
        Get.snackbar(
          "success",
          "${registerModel!.message}",
          snackPosition: SnackPosition.TOP,
        );
        isLoading = false;
        update();
      } else if (registerModel!.success == false) {
        Get.defaultDialog(
            title: "",
            middleText: '${registerModel!.message}',
            textCancel: "Ok",
            middleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            buttonColor: ColorHelp.orange,
            cancelTextColor: Colors.black,
            backgroundColor: Colors.grey.shade200);
        isLoading = false;
        update();
      }
    }).catchError((onError) {
      Get.snackbar("Error", "$onError",
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    });
    update();
  }

  Future loginMethod(
    String email,
    String password,
  ) async {
    isLoading = true;
    update();
    await PostMethods().loginPostMethod(data: {
      "email": email,
      "password": password,
    }).then((value) {
      loginModel = value;
      if (loginModel!.success == true && loginModel != null) {
        storage.write(accessTokenKEY, loginModel!.data!.accessToken);
        storage.write(refreshTokenKEY, loginModel!.data!.refreshToken);
        storage.write(KtokenCreatedAt, DateTime.now().toString());
        Get.to(HomeScreen);
        Get.snackbar(
          "success",
          "${loginModel!.message}",
          snackPosition: SnackPosition.TOP,
        );
        isLoading = false;
        update();
      } else if (loginModel!.success == false) {
        Get.defaultDialog(
            title: "",
            middleText: '${loginModel!.message}',
            textCancel: "Ok",
            middleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            buttonColor: ColorHelp.orange,
            cancelTextColor: Colors.black,
            backgroundColor: Colors.grey.shade200);
        isLoading = false;
        update();
      }
    }).catchError((onError) {
      Get.snackbar("Error", "$onError",
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.red);
    });
    update();
  }

  logout() async {
    storage.erase();
    Get.to(SignIn());
    update();
  }
}
