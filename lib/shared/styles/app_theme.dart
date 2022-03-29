import 'package:desafio_modulo_12_af/shared/styles/app_colors.dart';
import 'package:desafio_modulo_12_af/shared/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColorLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColorLight,
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.backgroundColorLight,
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      bodyText1: AppTextStyles.descriptionLight,
      bodyText2: AppTextStyles.smallDescriptionLight,
      subtitle1: AppTextStyles.descriptionLight.copyWith(
        color: Colors.grey.shade600
      ),
    ),
  );

  static final darkTheme = lightTheme.copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    appBarTheme: lightTheme.appBarTheme.copyWith(
      elevation: 3,
      backgroundColor: AppColors.backgroundColorDark,
    ),
    bottomNavigationBarTheme: lightTheme.bottomNavigationBarTheme.copyWith(
      backgroundColor: AppColors.backgroundColorDark,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
    ),
    textTheme: TextTheme(
      bodyText1: AppTextStyles.descriptionDark,
      bodyText2: AppTextStyles.smallDescriptionDark,
      subtitle1: AppTextStyles.descriptionDark.copyWith(
        color: Colors.blue.shade600
      ),
    ),
  );

}