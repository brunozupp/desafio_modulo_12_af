import 'package:desafio_modulo_12_af/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeMode {

  final ThemeMode mode;

  const AppThemeMode({
    required this.mode,
  });

  ThemeData getMode() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor.getColor(mode),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundColor.getColor(mode),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.backgroundColor.getColor(mode),
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: AppColors.textColor.getColor(mode),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        bodyText2: TextStyle(
          color: AppColors.textColor.getColor(mode),
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        subtitle1: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
