import 'dart:convert';

import 'package:school_monk/api_handler/api_handler.dart';
import 'package:school_monk/api_routes/api_routes.dart';
import 'package:school_monk/model/req/register_req_model.dart';
import 'package:school_monk/model/res/register_res_model.dart';

class PostUserInfo {
  static Future<RegisterResModel> postUserInfo(
      {Map<String, dynamic>? reqBody}) async {
    Map<String, String> headers = {
      "Authorization": "\$1\$aRkFpEz3\$qGGbgw/.xtfSv8rvK/j5y0",
      "Client-Service": "frontend-client",
      "User-ID": "1",
      "Auth-Key": "simplerestapi",
      "Content-Type": "application/x-www-form-urlencoded",
    };
    var response = await API.apiHandler(
        url: ApiRoutes.register,
        apiType: ApiType.aPost,
        reqBody: reqBody,
        headers: headers);

    RegisterResModel result = RegisterResModel.fromJson(jsonDecode(response));

    print("Sign Up Response===>>${jsonDecode(response)}");
    return result;
  }
}
