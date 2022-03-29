import 'package:flutter/material.dart';

class TextStylesThemeMode {

  final TextStyle lightTextStyle;
  final TextStyle darkTextStyle;

  const TextStylesThemeMode({
    required this.lightTextStyle,
    required this.darkTextStyle,
  });

  const TextStylesThemeMode.sameTheme({
    required TextStyle textStyle,
  }) : 
    lightTextStyle = textStyle,
    darkTextStyle = textStyle;
}
