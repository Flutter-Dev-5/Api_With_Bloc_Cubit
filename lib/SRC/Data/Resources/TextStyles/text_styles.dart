import 'package:block_pratice/imports.dart';

class TextStyles {
  // Bold TextStyles

  static TextStyle bold({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 52,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? LightColors.primaryColor,
      letterSpacing: letterSpacing ?? 0,
    );
  }

  // Medium TextStyle

  static TextStyle mediumTextStyle({
    FontWeight? fontWeight,
    double? fontSize,
    Color? textColor,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: fontSize ?? 21,
      color: textColor ?? LightColors.primaryColor,
      letterSpacing: letterSpacing ?? 0,
    );
  }

  //Normal TextStyle

  static TextStyle smallTextStyle({
    FontWeight? fontWeight,
    double? fontSize,
    Color? textColor,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.w700,
      fontSize: fontSize ?? 21,
      color: textColor ?? LightColors.primaryColor,
      letterSpacing: letterSpacing ?? 0,
    );
  }
}
