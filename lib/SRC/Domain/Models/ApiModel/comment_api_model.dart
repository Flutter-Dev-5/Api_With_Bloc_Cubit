import 'package:block_pratice/SRC/Domain/Models/CommentModel/comment_model.dart';

class CommentApiModel {
  final bool success;
  final List<CommentModel>? data;
  final int? statusCode;
  final String? error;

  CommentApiModel({
    required this.success,
    this.data,
    this.statusCode,
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
