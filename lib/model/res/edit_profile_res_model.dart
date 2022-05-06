// To parse this JSON data, do
//
//     final editProfileResModel = editProfileResModelFromJson(jsonString);

import 'dart:convert';

EditProfileResModel editProfileResModelFromJson(String str) =>
    EditProfileResModel.fromJson(json.decode(str));

String editProfileResModelToJson(EditProfileResModel data) =>
    json.encode(data.toJson());

class EditProfileResModel {
  EditProfileResModel({
    this.status,
    this.message,
    this.count,
    this.response,
  });

  int? status;
  String? message;
  int? count;
  List<Response>? response;

  factory EditProfileResModel.fromJson(Map<String, dynamic> json) =>
      EditProfileResModel(
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
    this.userId,
  });

  String? userId;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
      };
}
