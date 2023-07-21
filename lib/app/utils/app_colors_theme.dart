import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColorsTheme {
  static const MaterialColor kRed = MaterialColor(
    0xFFB87B77,
    <int, Color>{
      50: Color(0xFFB87B77), //10%
      100: Color(0xFFB6544F), //20%
      200: Color(0xFFC23E36), //30%
      300: Color(0xFFB91F14), //40%
      400: Color(0xFFB90A00), //50%
      500: Color(0xFFEA0F00), //60%
      600: Color(0xFF880800), //70%
      700: Color(0xFF640903), //80%
      800: Color(0xFF480601), //90%
      900: Color(0xFF210200), //100%
    },
  );

  static ThemeData kThemeLight = ThemeData(
    primarySwatch: AppColorsTheme.kRed,
    primaryColor: AppColorsTheme.kRed,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: AppColorsTheme.kRed,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    ),
  );
  static Color white = Colors.white;
  static Color grey = Colors.grey.shade300;
  static Color red = Colors.red;
} // yo
