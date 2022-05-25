
import 'package:odc/models/Category.dart';

class Courses {
  String? success;
  List<Data>? data;
  String? message;

  Courses({this.success, this.data, this.message});

  Courses.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;

    return data;
  }
}

class Data {
  int? id;
  String? course_name;
  String? course_level;
  String? description;
  String? enrollable;
  String? entryExamId;
  String? exam1;
  String? exam2;
  String? exam3 ;
  String? finalProject;
  String? image_url;
  String? createdAt;
  List<CategoryModel>? Category;

  Data(
      {this.id,
        this.course_level,
        this.course_name,
        this.description,
        this.enrollable,
        this.entryExamId,
        this.exam1,
        this.exam2,
        this.exam3,
        this.finalProject,
        this.image_url,
        this.createdAt,
        this.Category});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    course_name = json['course_name'];
    course_level = json['course_level'];
    description = json['description'];
    enrollable = json['enrollable'];
    entryExamId = json['entryExamId'];
    exam1 = json['exam1'];
    exam2 = json['exam2'];
    exam3 = json['exam3'];
    finalProject = json['finalProject'];
    image_url = json['image_url'];
    createdAt = json['created_at'];
    Category = json['Category'];
    if (json['Category'] != null) {
      Category = <CategoryModel>[] ;
      json['data'].forEach((v) {
        Category!.add(new CategoryModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course_name'] = this.course_name;
    data['course_level'] = this.course_level;
    data['enrollable'] = this.enrollable;
    data['exam1'] = this.exam1;
    data['entryExamId'] = this.entryExamId;
    data['exam2'] = this.exam2;
    data['exam3'] = this.exam3;
    data['finalProject'] = this.finalProject;
    data['image_url'] = this.image_url;
    data['created_at'] = this.createdAt;
    if (this.Category != null) {
      data['Category'] = this.Category!.map((v) => v).toList();
    }

    ;
    return data;
  }
}