import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../models/user.dart';
import '../utils/Cache_Helper.dart';
import '../utils/diohelper.dart';

class UserProvider extends ChangeNotifier {
  UserModel? userData;
  Dio _dio = Dio(
    BaseOptions(
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${Cache_Helper.getData('api') ?? ''}',
      },
    ),
  );

  Future getUserData(String? email, String? password) async {
    try {
      var response = await DioHelper.setData(
          path: 'login', data: {'login': email, 'password': password});
      if (response.statusCode == 200) {
        await Cache_Helper.setData('email', email);
        await Cache_Helper.setData('password', password);
        print('messgage ' + response.data['message']);
        userData = UserModel.fromJson(response.data);

        // final storage = GetStorage();
        await Cache_Helper.removeData('api');
        await Cache_Helper
            .setData('api', userData?.data?.first.apiToken.toString());

        // await Cache_Helper.setData('api', userData?.data?.first.apiToken);
        print(userData?.data
            ?.elementAt(0)
            .email);
        notifyListeners();
      }
    } catch (error) {
      Cache_Helper.removeData('email');
      Cache_Helper.removeData('password');
      userData = null;
      print('error from userprovider' + error.toString());
      notifyListeners();
    }
  }


}