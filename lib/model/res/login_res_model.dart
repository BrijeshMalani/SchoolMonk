// To parse this JSON data, do
//
//     final loginResModel = loginResModelFromJson(jsonString);

import 'dart:convert';

LoginResModel loginResModelFromJson(String str) =>
    LoginResModel.fromJson(json.decode(str));

String loginResModelToJson(LoginResModel data) => json.encode(data.toJson());

class LoginResModel {
  LoginResModel({
    this.status,
    this.message,
    this.count,
    this.response,
  });

  int? status;
  String? message;
  int? count;
  List<Response>? response;

  factory LoginResModel.fromJson(Map<String, dynamic> json) => LoginResModel(
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
    this.userSlug,
    this.fname,
    this.lname,
    this.isMobileVerified,
    this.userUniqSession,
  });

  String? userId;
  String? userSlug;
  String? fname;
  String? lname;
  String? isMobileVerified;
  String? userUniqSession;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        userId: json["user_id"],
        userSlug: json["user_slug"],
        fname: json["fname"],
        lname: json["lname"],
        isMobileVerified: json["is_mobile_verified"],
        userUniqSession: json["userUniqSession"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_slug": userSlug,
        "fname": fname,
        "lname": lname,
        "is_mobile_verified": isMobileVerified,
        "userUniqSession": userUniqSession,
      };
}
