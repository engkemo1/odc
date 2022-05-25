import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:odc/Utils/constants.dart'as cons;
import '../models/user.dart';

class AuthProvider with ChangeNotifier {
  UserModel? userData;

  Future<Data?> loginWithAccount({
    required String email,
    required String pass,
  }) async {
    final url = Uri.parse(cons.loginUrl);

    final response = await http.post(url, body: {
      'login': email,
      'password': pass,
    });

    if (response.statusCode == 200) {
      userData = UserModel.fromJson(json.decode(response.body));
      if (userData != null &&
          userData!.success!.contains('true') &&
          userData!.data!.isNotEmpty) {
        return userData!.data?.first;
      }
    }

    return null;
  }
}
