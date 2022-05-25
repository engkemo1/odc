import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:odc/views/HomeScreen.dart';

import '../Utils/constants.dart' as cons;

class RegisterProvider extends ChangeNotifier {

  Future<void> registerButton({
    required GlobalKey<FormState> globalKey,
    required BuildContext context,
    required String name,
    required String email,
    required String password,
    required String phone,
  }) async {
    //

    if (globalKey.currentState!.validate()) {

      try {
        final http.Response _response =
            await http.post(Uri.parse(cons.registerUrl), body: {
          'name': name,
          'email': email,
          'password': password,
          'phone': phone,
        });

        final Map<String, dynamic> _data = jsonDecode(_response.body);

        print(_data);
        if (_response.statusCode == 200) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => HomeScreen()));
        } else {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Text("already used"),
                  elevation: 5,
                );
              });
        }
      } catch (e) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text("check your internet "),
                elevation: 5,
              );
            });
      }
    }
    // Get.offAllNamed(MainScreen.id)
  }
}
