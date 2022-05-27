import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:odc/models/Login_model.dart';
import 'package:odc/models/user_model.dart';

import '../Utils/constants.dart';
import '../models/access_tocken_model.dart';

class PostMethods {
  ///register
  Future<RegisterModel> registerPostMethod({
    required Map<String, dynamic> data,
  }) async {
    var response = await http.post(Uri.parse(baseUrl + "register"), body: data);
    var RespnseBody = jsonDecode(response.body);
    RegisterModel registerModel =
    RegisterModel.fromJson(RespnseBody);
    return registerModel;
  }

  ///login
  Future<LoginResponseModel> loginPostMethod({
    required Map<String, dynamic> data,
  }) async {
    var response = await http.post(Uri.parse(baseUrl + "login"), body: data);
    var RespnseBody = jsonDecode(response.body);
    LoginResponseModel responseModel = LoginResponseModel.fromJson(RespnseBody);
    return responseModel;
  }

  ///getNewToken
  Future<AccessTokenModel> getNewToken(String refreshToken) async {
    var response = await http.post(Uri.parse(baseUrl + 'refreshToken'),
        headers: {"Authorization": 'Bearer ' + refreshToken}, body: '');

    var responseBody = jsonDecode(response.body);
    AccessTokenModel accessTokenModel = AccessTokenModel.fromJson(responseBody);
    return accessTokenModel;
  }

  ///enroll course
  Future enrollCourseMethod(int courseId, String accessToken) async {
    var response = await http.post(
      Uri.parse(baseUrl + 'courses/$courseId/enroll'),
      headers: {"Authorization": 'Bearer ' + accessToken},
    );

    var responseBody = jsonDecode(response.body);
    return responseBody;
  }

  ///submit exam
  Future submitExamMethod(
      List<String> answers, int examId, String accessToken) async {
    var response = await http.post(Uri.parse(baseUrl + 'exams/$examId/submit'),
        headers: {"Authorization": 'Bearer ' + accessToken},
        body: json.encode({"answers": answers}));
    var responseBody = jsonDecode(response.body);
    return responseBody;
  }
}