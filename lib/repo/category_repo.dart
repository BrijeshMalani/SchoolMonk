import 'package:http/http.dart' as http;
import 'package:school_monk/api_routes/api_routes.dart';
import 'package:school_monk/model/res/MainCategoryResModel.dart';

class CategoryRepo {
  static Future<MainCategoryResModel> categoryRepo() async {
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "Auth-Key": "simplerestapi",
      "Client-Service": "frontend-client",
    };
    http.Response response =
        await http.get(Uri.parse(ApiRoutes.mainCategory), headers: headers);

    return mainCategoryResModelFromJson(response.body);
  }
}
