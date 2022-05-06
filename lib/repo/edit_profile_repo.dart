import 'dart:convert';

import 'package:school_monk/api_handler/api_handler.dart';
import 'package:school_monk/api_routes/api_routes.dart';
import 'package:school_monk/model/req/register_req_model.dart';
import 'package:school_monk/model/res/edit_profile_res_model.dart';
import 'package:school_monk/model/res/register_res_model.dart';

class EditProfileRepo {
  static Future<EditProfileResModel> editProfileRepo(
      {Map<String, dynamic>? reqBody}) async {
    Map<String, String> headers = {
      "Authorization": "\$1\$aRkFpEz3\$qGGbgw/.xtfSv8rvK/j5y0",
      "Client-Service": "frontend-client",
      "User-ID": "1",
      "Auth-Key": "simplerestapi",
      "Content-Type": "application/x-www-form-urlencoded",
    };
    var response = await API.apiHandler(
        url: ApiRoutes.editProfile,
        apiType: ApiType.aPost,
        reqBody: reqBody,
        headers: headers);

    EditProfileResModel result =
        EditProfileResModel.fromJson(jsonDecode(response));
    return result;
  }
}
