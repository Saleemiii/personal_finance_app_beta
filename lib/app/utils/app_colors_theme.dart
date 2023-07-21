import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColorsTheme {
  static const MaterialColor kBlue = MaterialColor(
    0xFF26C2FF,
    <int, Color>{
      50: Color(0xFFE4F5FC), //10%
      100: Color(0xFF9FE6FF), //20%
      200: Color(0xFF70DEFF), //30%
      300: Color(0xFF26C2FF), //40%
      400: Color(0xFF0089C5), //50%
      500: Color(0xFF006B98), //60%
      600: Color(0xFF1B57D8), //70%
      700: Color(0xFF001BA2), //80%
      800: Color(0xFF021070), //90%
      900: Color(0xFF03086B), //100%
    },
  );

  static ThemeData kThemeLight = ThemeData(
    primarySwatch: AppColorsTheme.kBlue,
    primaryColor: AppColorsTheme.kBlue,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: AppColorsTheme.kBlue,
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
