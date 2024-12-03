import 'package:flutter/material.dart';
import 'package:raffashe/core/constants/colors.dart';
import 'package:raffashe/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raffashe',
      theme: ThemeData(
        primaryColor: AppColors.primary100,
        canvasColor: AppColors.bg100,
        scaffoldBackgroundColor: AppColors.bg200,
        hintColor: AppColors.accent100,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.text200),
          bodyMedium: TextStyle(color: AppColors.text100),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.bg300,
          iconTheme: IconThemeData(color: AppColors.text100),
        ),
        useMaterial3: true,
        fontFamily: "custom",
      ),
      home: const SplashScreen(),
    );
  }
}
