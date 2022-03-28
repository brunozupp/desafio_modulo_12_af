import 'package:desafio_modulo_12_af/shared/styles/app_colors.dart';
import 'package:desafio_modulo_12_af/shared/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      bodyText1: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: const TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
      subtitle1: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 14,
      ),
    ),
  );

  static final darkTheme = lightTheme.copyWith(
    scaffoldBackgroundColor: Colors.red,
    appBarTheme: lightTheme.appBarTheme.copyWith(
      elevation: 3
    ),
    textTheme: TextTheme(
      bodyText1: AppTextStyles.simpleText,
      bodyText2: const TextStyle(
        color: Colors.white,
        fontSize: 12,
      ),
      subtitle1: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 14,
      ),
    ),
  );

}