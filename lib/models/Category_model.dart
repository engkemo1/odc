class CategoryModel {
  String? success;
  List<CategoriesData>? data;
  String? message;

  CategoryModel({this.success, this.data, this.message});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <CategoriesData>[];
      json['data'].forEach((v) {
        data!.add(new CategoriesData.fromJson(v));
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

class CategoriesData {
  int? id;
  String? category_name;
  String? image_url;


  CategoriesData({this.id,
    this.category_name,
    this.image_url,
  });

  CategoriesData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category_name = json['category_name'];

    image_url = json['image_url'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_name'] = this.category_name;
    data['image_url'] = this.image_url;




    return data;
  }}