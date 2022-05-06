// To parse this JSON data, do
//
//     final mainCategoryResModel = mainCategoryResModelFromJson(jsonString);

import 'dart:convert';

MainCategoryResModel mainCategoryResModelFromJson(String str) =>
    MainCategoryResModel.fromJson(json.decode(str));

String mainCategoryResModelToJson(MainCategoryResModel data) =>
    json.encode(data.toJson());

class MainCategoryResModel {
  MainCategoryResModel({
    this.status,
    this.message,
    this.count,
    this.response,
  });

  int? status;
  String? message;
  int? count;
  List<Response>? response;

  factory MainCategoryResModel.fromJson(Map<String, dynamic> json) =>
      MainCategoryResModel(
        status: json["status"],
        message: json["message"],
        count: json["count"],
        response: List<Response>.from(
            json["response"].map((x) => Response.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "count": count,
        "response": List<dynamic>.from(response!.map((x) => x.toJson())),
      };
}

class Response {
  Response({
    this.categoryId,
    this.catSlug,
    this.categoryName,
    this.categoryImg,
    this.productCount,
    this.isSubcategoryExits,
    this.isFilterExits,
  });

  String? categoryId;
  String? catSlug;
  String? categoryName;
  String? categoryImg;
  String? productCount;
  String? isSubcategoryExits;
  String? isFilterExits;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        categoryId: json["category_id"],
        catSlug: json["cat_slug"],
        categoryName: json["category_name"],
        categoryImg: json["category_img"],
        productCount: json["product_count"],
        isSubcategoryExits: json["is_subcategory_exits"],
        isFilterExits: json["is_filter_exits"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "cat_slug": catSlug,
        "category_name": categoryName,
        "category_img": categoryImg,
        "product_count": productCount,
        "is_subcategory_exits": isSubcategoryExits,
        "is_filter_exits": isFilterExits,
      };
}
