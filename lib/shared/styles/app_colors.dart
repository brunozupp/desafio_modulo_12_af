import 'package:desafio_modulo_12_af/shared/styles/models/colors_theme_mode.dart';
import 'package:flutter/material.dart';

class AppColors {

  AppColors._();

  static const backgroundColor = ColorsThemeMode(
    light: Colors.black,
    dark: Colors.grey,
  );

  static const textColor = ColorsThemeMode(
    light: Colors.white,
    dark: Colors.green,
  );

  static const primaryColor = ColorsThemeMode(
    light: Colors.white,
    dark: Colors.green,
  );

  static const borderInputColor = ColorsThemeMode(
    light: Colors.purple,
    dark: Colors.indigoAccent,
  );

  static const borderInputErrorColor = ColorsThemeMode(
    light: Colors.redAccent,
    dark: Colors.red,
  );

  static const buttonColor = ColorsThemeMode(
    light: Colors.purple,
    dark: Colors.indigoAccent,
  );
}