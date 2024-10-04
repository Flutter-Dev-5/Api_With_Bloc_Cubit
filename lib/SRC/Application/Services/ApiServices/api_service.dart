import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:block_pratice/SRC/Domain/Models/ApiModel/api_model.dart';
import 'package:block_pratice/SRC/Domain/Models/UserModel/user_model_api.dart';
import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

class ApiServices {
  static Future<ApiModel> get({
    bool retry = true,
    required String url,
    Map<String, String>? headers,
  }) async {
    var r =
        const RetryOptions(maxAttempts: 5, delayFactor: Duration(seconds: 10));
    try {
      final response = retry
          ? await r.retry(
              () => http
                  .get(Uri.parse(url), headers: headers)
                  .timeout(const Duration(seconds: 5)),
              retryIf: (e) => e is SocketException || e is TimeoutException)
          : await http
              .get(Uri.parse(url), headers: headers)
              .timeout(const Duration(seconds: 5));

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        List<UserModelApi> apiResponse = [];

        for (Map i in data) {
          apiResponse.add(UserModelApi.fromJson(i));
        }

        return ApiModel(
          success: true,
          statusCode: response.statusCode,
          data: apiResponse,
        );
      } else {
        return ApiModel(
            success: false,
            statusCode: response.statusCode,
            error: response.reasonPhrase);
      }
    } catch (e) {
      return _handleErrors(e);
    }
  }

  static ApiModel _handleErrors(dynamic error) {
    if (error is SocketException) {
      return ApiModel(
          success: false, statusCode: 30, error: "Something Went Wrong ");
    } else if (error is TimeoutException) {
      return ApiModel(
          success: false, statusCode: 31, error: "Time Out Try Again");
    } else if (error is HttpException) {
      return ApiModel(
          success: false, statusCode: 32, error: "the Url does Not Exits");
    } else {
      return ApiModel(
          success: false, statusCode: 33, error: "UnKnown Error Occurred");
    }
  }
}
