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
        scaffoldBackgroundColor: AppColors.bg100,
        useMaterial3: true,
        fontFamily: "custom",
      ),
      home: const SplashScreen(),
    );
  }
}
