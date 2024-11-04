import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/theme/app_colors.dart';

class AppTheme {
  static final lighMode = ThemeData(
    fontFamily: "DMSans",
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
  );
    static final darkMode = ThemeData(
    fontFamily: "DMSans",
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkMode,
  );
}
