import 'package:desafio_modulo_12_af/shared/styles/app_colors.dart';
import 'package:desafio_modulo_12_af/shared/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor.lightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor.lightColor,
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.backgroundColor.lightColor,
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      bodyText1: AppTextStyles.description.lightTextStyle,
      bodyText2: AppTextStyles.smallDescription.lightTextStyle,
      subtitle1: AppTextStyles.description.lightTextStyle.copyWith(
        color: Colors.grey.shade600
      ),
    ),
  );

  static final darkTheme = lightTheme.copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor.darkColor,
    appBarTheme: lightTheme.appBarTheme.copyWith(
      elevation: 3,
      backgroundColor: AppColors.backgroundColor.darkColor,
    ),
    bottomNavigationBarTheme: lightTheme.bottomNavigationBarTheme.copyWith(
      backgroundColor: AppColors.backgroundColor.darkColor,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
    ),
    textTheme: TextTheme(
      bodyText1: AppTextStyles.description.darkTextStyle,
      bodyText2: AppTextStyles.smallDescription.darkTextStyle,
      subtitle1: AppTextStyles.description.darkTextStyle.copyWith(
        color: Colors.blue.shade600
      ),
    ),
  );

}