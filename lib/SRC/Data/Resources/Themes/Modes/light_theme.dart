import 'package:block_pratice/SRC/Data/Resources/TextStyles/text_styles.dart';
import 'package:block_pratice/imports.dart';

mixin LightTheme {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: colorScheme,
    textTheme: lightText,
    useMaterial3: true,
  );

  static ColorScheme colorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: LightColors.primaryColor,
    onPrimary:
        Colors.white, // Dark theme typically uses darker onPrimary colors
    secondary: Colors.black38,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  );

  static TextTheme lightText = TextTheme(
    displayLarge: TextStyles.bold(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      color: colorScheme.primary,
    ),
  );
}
