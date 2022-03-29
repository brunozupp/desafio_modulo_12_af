import 'package:desafio_modulo_12_af/pages/home/home_page.dart';
import 'package:desafio_modulo_12_af/shared/styles/models/app_theme_mode.dart';
import 'package:desafio_modulo_12_af/stores/global/theme_store/theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(const MyApp());
}

final themeStore = ThemeStore();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        title: 'Flutter Demo',
        themeMode: themeStore.isDark ? ThemeMode.dark : ThemeMode.light,
        darkTheme: const AppThemeMode(mode: ThemeMode.dark).getMode(),
        theme: const AppThemeMode(mode: ThemeMode.light).getMode(),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      );
    });
  }
}
