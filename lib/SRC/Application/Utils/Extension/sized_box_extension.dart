import 'package:block_pratice/imports.dart';

extension SizedBoxExtension on num {
  SizedBox get w => SizedBox(
        width: toDouble(),
      );
  SizedBox get h => SizedBox(
        height: toDouble(),
      );
}
