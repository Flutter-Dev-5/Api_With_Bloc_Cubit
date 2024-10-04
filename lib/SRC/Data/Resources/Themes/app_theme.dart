import 'package:block_pratice/SRC/Data/Resources/Themes/Modes/dark_theme.dart';
import 'package:block_pratice/SRC/Data/Resources/Themes/Modes/light_theme.dart';
import 'package:block_pratice/imports.dart';

class AppTheme with DarkTheme, LightTheme {
  static ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.dark);
  static toggleTheme() {
    themeMode.value =
        (themeMode.value == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
  }
}
