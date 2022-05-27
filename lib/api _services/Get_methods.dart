import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:odc/models/Category_model.dart';

import '../Utils/constants.dart';
import '../models/courses_model.dart';
import '../models/exam-model.dart';

class GetMethods {
  ///getCategories
  Future<CategoryModel> getCategoriesMethod(String refreshToken) async {
    var response = await http.get(Uri.parse(baseUrl + "categories"),
        headers: {"Authorization": 'Bearer ' + refreshToken});
    var responseBody = jsonDecode(response.body);

    CategoryModel categoriesModel = CategoryModel.fromJson(responseBody);
    return categoriesModel;
  }

  ///getAllCourses
  Future<Courses> getAllCoursesMethod(String refreshToken) async {
    var response = await http.get(Uri.parse(baseUrl + "courses"),
        headers: {"Authorization": 'Bearer ' + refreshToken});
    var responseBody = jsonDecode(response.body);

    Courses categoriesModel = Courses.fromJson(responseBody);
    return categoriesModel;
  }
  ///get exam by code
  Future<ExamModel> getExamMethod(int examCode, String accessToken) async {
    var response = await http.get(
      Uri.parse(baseUrl + 'exams/$examCode'),
      headers: {"Authorization": 'Bearer ' + accessToken},
    );

    var responseBody = jsonDecode(response.body);
    ExamModel examModel=ExamModel.fromJson(responseBody);
    return examModel;
  }
}