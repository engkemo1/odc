
import 'package:odc/models/Category_model.dart';

class Courses {
  String? success;
  List<CoursesData>? data;
  String? message;

  Courses({this.success, this.data, this.message});

  Courses.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <CoursesData>[];
      json['data'].forEach((v) {
        data!.add(new CoursesData.fromJson(v));
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

class CoursesData {
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
  Admin? admin;

  CoursesData(
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
        this.Category,
        this.admin});

  CoursesData.fromJson(Map<String, dynamic> json) {
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
      admin = json['Admin'] != null ? new Admin.fromJson(json['Admin']) : null;

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
    };
    if (this.admin != null) {
      data['Admin'] = this.admin!.toJson();
    }

    ;
    return data;
  }
}
class Category {
  int? id;
  String? categoryName;
  String? imageUrl;

  Category({this.id, this.categoryName, this.imageUrl});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_name'] = this.categoryName;
    data['image_url'] = this.imageUrl;
    return data;
  }
}



class Admin {
  String? adminName;
  String? email;

  Admin({this.adminName, this.email});

  Admin.fromJson(Map<String, dynamic> json) {
    adminName = json['admin_name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['admin_name'] = this.adminName;
    data['email'] = this.email;
    return data;
  }
}