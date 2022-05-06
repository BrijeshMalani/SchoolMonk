import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

enum ApiType { aGet, aPost }

class API {
  static http.Response? response;

  static Future apiHandler({
    required String url,
    required ApiType apiType,
    Map<String, dynamic>? reqBody,
    Map<String, String>? headers,
  }) async {
    try {
      if (apiType == ApiType.aGet) {
        response = await http.get(Uri.parse(url), headers: headers);
      } else {
        response =
            await http.post(Uri.parse(url), body: reqBody, headers: headers);
      }
      if (response!.statusCode == 200) {
        return response!.body;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
