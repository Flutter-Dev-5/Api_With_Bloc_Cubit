import 'package:block_pratice/SRC/Domain/Models/UserModel/user_model_api.dart';

class ApiModel {
  final bool success;
  List<UserModelApi>? data;
  final int? statusCode;
  final String? error;

  ApiModel({
    required this.success,
    this.statusCode,
    this.data,
    this.error,
  });

  Map<String, dynamic> toJson() {
    return {
      "success": success,
      "data": data,
      "statusCode": statusCode,
      "error": error,
    };
  }
}
