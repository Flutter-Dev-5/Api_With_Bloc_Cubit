import 'package:block_pratice/SRC/Data/Resources/Colors/Modes/dark_colors.dart';
import 'package:block_pratice/SRC/Data/Resources/TextStyles/text_styles.dart';
import 'package:block_pratice/imports.dart';

mixin DarkTheme {
  ThemeData darkTheme = ThemeData(
    colorScheme: colorScheme,
    textTheme: darkText,
    brightness: Brightness.dark,
    useMaterial3: true,
  );

  static ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: DarkColors.primaryColor,
    onPrimary: Colors.black,
    secondary: Colors.purple,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white,
  );

  static TextTheme darkText = TextTheme(
    displayLarge: TextStyles.bold(
      fontSize: 52,
      fontWeight: FontWeight.w700,
      color: colorScheme.primary,
    ),
  );
}
