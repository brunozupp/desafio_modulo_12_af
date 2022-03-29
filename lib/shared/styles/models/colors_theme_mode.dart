import 'package:flutter/material.dart';

class ColorsThemeMode {

  final Color light;
  final Color dark;

  const ColorsThemeMode({
    required this.light,
    required this.dark,
  });

  const ColorsThemeMode.sameTheme({
    required Color color,
  }) : 
    light = color,
    dark = color;

  Color getColor(ThemeMode mode) {
    if(mode == ThemeMode.dark) {
      return dark;
    }

    return light;
  }
}
