import 'package:desafio_modulo_12_af/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {

  AppTextStyles._();

  // Light
  static const descriptionLight = TextStyle(
    color: AppColors.textColorLight,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const smallDescriptionLight = TextStyle(
    color: AppColors.textColorLight,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  // Dark
  static const descriptionDark = TextStyle(
    color: AppColors.textColorDark,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const smallDescriptionDark = TextStyle(
    color: AppColors.textColorDark,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

}