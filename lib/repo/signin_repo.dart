import 'dart:convert';

import 'package:school_monk/api_handler/api_handler.dart';
import 'package:school_monk/api_routes/api_routes.dart';
import 'package:school_monk/model/res/login_res_model.dart';

class SignInRepo {
  static Future<LoginResModel> signInRepo(
      {Map<String, dynamic>? reqBody}) async {
    Map<String, String> headers = {
      "Authorization": "\$1\$aRkFpEz3\$qGGbgw/.xtfSv8rvK/j5y0",
      "Client-Service": "frontend-client",
      "User-ID": "1",
      "Auth-Key": "simplerestapi",
      "Content-Type": "application/x-www-form-urlencoded",
    };
    var response = await API.apiHandler(
        url: ApiRoutes.login,
        apiType: ApiType.aPost,
        reqBody: reqBody,
        headers: headers);

    LoginResModel result = LoginResModel.fromJson(jsonDecode(response));
    return result;
  }
}
