import 'package:flutter/material.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_string.dart';
import 'package:flutter_academy_task2/core/global/theme/light_theme.dart';
import 'package:flutter_academy_task2/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstantString.appTitle,
      theme: getLightTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
