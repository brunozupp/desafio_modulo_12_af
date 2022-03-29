import 'package:flutter/material.dart';

class ColorsThemeMode {

  final Color lightColor;
  final Color darkColor;

  const ColorsThemeMode({
    required this.lightColor,
    required this.darkColor,
  });

  const ColorsThemeMode.sameTheme({
    required Color color,
  }) : 
    lightColor = color,
    darkColor = color;
}
