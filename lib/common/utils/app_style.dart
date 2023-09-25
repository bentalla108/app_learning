import 'package:app_learning/common/utils/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColors.primaryText,
        )),
  );
}
