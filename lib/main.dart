import 'package:flutter/material.dart';
import 'package:raffashe/portfolio.dart';

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
        primarySwatch: Colors.purple,
        useMaterial3: true,
        canvasColor: Colors.purple.shade50,
        fontFamily: "custom",
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple.shade50,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.purple,
        ),
      ),
      home: const Portfolio(),
    );
  }
}
