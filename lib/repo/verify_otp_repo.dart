import 'dart:convert';

import 'package:school_monk/api_handler/api_handler.dart';
import 'package:school_monk/api_routes/api_routes.dart';

import 'package:school_monk/model/req/verify_otp_req_model.dart';

class VerifyOtpRepo {
  static Future<VerifyOtpReqModel> verifyOtpRepo(
      {Map<String, dynamic>? reqBody}) async {
    Map<String, String> headers = {
      "Authorization": "\$1\$aRkFpEz3\$qGGbgw/.xtfSv8rvK/j5y0",
      "Client-Service": "frontend-client",
      "User-ID": "1",
      "Auth-Key": "simplerestapi",
      "Content-Type": "application/x-www-form-urlencoded",
    };
    var response = await API.apiHandler(
        url: ApiRoutes.verifyOtp,
        apiType: ApiType.aPost,
        reqBody: reqBody,
        headers: headers);

    print("Otp response=====>>>>>>$response");

    VerifyOtpReqModel result = VerifyOtpReqModel.fromJson(jsonDecode(response));

    return result;
  }
}
