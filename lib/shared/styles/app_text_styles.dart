import 'package:desafio_modulo_12_af/shared/styles/app_colors.dart';
import 'package:desafio_modulo_12_af/shared/styles/text_styles_theme_mode.dart';
import 'package:flutter/material.dart';

class AppTextStyles {

  AppTextStyles._();

  static final description = TextStylesThemeMode(
    lightTextStyle: TextStyle(
      color: AppColors.textColor.lightColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    darkTextStyle: TextStyle(
      color: AppColors.textColor.darkColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  );

  static final smallDescription = TextStylesThemeMode(
    lightTextStyle: TextStyle(
      color: AppColors.textColor.lightColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    darkTextStyle: TextStyle(
      color: AppColors.textColor.darkColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}