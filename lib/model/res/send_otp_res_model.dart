// To parse this JSON data, do
//
//     final sendOtpResModel = sendOtpResModelFromJson(jsonString);

import 'dart:convert';

SendOtpResModel sendOtpResModelFromJson(String str) =>
    SendOtpResModel.fromJson(json.decode(str));

String sendOtpResModelToJson(SendOtpResModel data) =>
    json.encode(data.toJson());

class SendOtpResModel {
  SendOtpResModel({
    this.status,
    this.message,
    this.count,
    this.response,
  });

  int? status;
  String? message;
  int? count;
  List<Response>? response;

  factory SendOtpResModel.fromJson(Map<String, dynamic> json) =>
      SendOtpResModel(
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
    this.mobile,
    this.otp,
    this.numOfOptSentToday,
  });

  String? userId;
  String? mobile;
  int? otp;
  int? numOfOptSentToday;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        userId: json["user_id"],
        mobile: json["mobile"],
        otp: json["otp"],
        numOfOptSentToday: json["num_of_opt_sent_today"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "mobile": mobile,
        "otp": otp,
        "num_of_opt_sent_today": numOfOptSentToday,
      };
}
