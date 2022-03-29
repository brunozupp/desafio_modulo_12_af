import 'package:desafio_modulo_12_af/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeMode {

  final ThemeMode mode;

  const AppThemeMode({
    required this.mode,
  });

  ThemeData getMode() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor.getColor(mode),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundColor.getColor(mode),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.backgroundColor.getColor(mode),
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: AppColors.textColor.getColor(mode),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        bodyText2: TextStyle(
          color: AppColors.textColor.getColor(mode),
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        subtitle1: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(
          color: AppColors.borderInputColor.getColor(mode),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        iconColor: AppColors.borderInputColor.getColor(mode),
        labelStyle: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderInputColor.getColor(mode),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderInputColor.getColor(mode),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderInputColor.getColor(mode),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderInputColor.getColor(mode),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderInputErrorColor.getColor(mode),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderInputErrorColor.getColor(mode),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {

            if(states.contains(MaterialState.disabled)) {
              return Colors.grey.shade700;
            }

            return AppColors.buttonColor.getColor(mode);
          }),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {

            if(states.contains(MaterialState.disabled)) {
              return const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              );
            }

            return TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              foreground: Paint()..
                color = AppColors.textColor.getColor(mode),
            );
          }),
          minimumSize: MaterialStateProperty.all<Size>(const Size(
            double.infinity, 
            56
          )),
        ),
      )
    );
  }
}
