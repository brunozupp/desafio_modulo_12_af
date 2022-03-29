import 'package:desafio_modulo_12_af/shared/styles/colors_theme_mode.dart';
import 'package:flutter/material.dart';

class AppColors {

  AppColors._();

  static const backgroundColor = ColorsThemeMode(
    lightColor: Colors.black,
    darkColor: Colors.red,
  );

  static const textColor = ColorsThemeMode(
    lightColor: Colors.white,
    darkColor: Colors.green,
  );

  static const primaryColor = ColorsThemeMode(
    lightColor: Colors.white,
    darkColor: Colors.green,
  );
}