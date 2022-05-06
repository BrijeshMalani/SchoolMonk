import 'package:http/http.dart' as http;
import 'package:school_monk/api_routes/api_routes.dart';
import 'package:school_monk/model/res/all_school_res_model.dart';

class AllSchoolRepo {
  static Future<AllSchoolsModel> allSchoolRepo() async {
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "Auth-Key": "simplerestapi",
      "Client-Service": "frontend-client",
    };
    http.Response response =
        await http.get(Uri.parse(ApiRoutes.allSchool), headers: headers);

    return allSchoolsModelFromJson(response.body);
  }
}
