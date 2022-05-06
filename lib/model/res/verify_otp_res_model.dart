// To parse this JSON data, do
//
//     final verifyOtpResModel = verifyOtpResModelFromJson(jsonString);

import 'dart:convert';

VerifyOtpResModel verifyOtpResModelFromJson(String str) =>
    VerifyOtpResModel.fromJson(json.decode(str));

String verifyOtpResModelToJson(VerifyOtpResModel data) =>
    json.encode(data.toJson());

class VerifyOtpResModel {
  VerifyOtpResModel({
    this.status,
    this.message,
    this.count,
    this.response,
  });

  int? status;
  String? message;
  int? count;
  List<dynamic>? response;

  factory VerifyOtpResModel.fromJson(Map<String, dynamic> json) =>
      VerifyOtpResModel(
        status: json["status"],
        message: json["message"],
        count: json["count"],
        response: List<dynamic>.from(json["response"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "count": count,
        "response": List<dynamic>.from(response!.map((x) => x)),
      };
}
