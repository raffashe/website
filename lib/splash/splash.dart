import 'dart:async';
import 'package:flutter/material.dart';

import '../core/constants/colors.dart';
import '../features/portfolio/presentation/portfolio.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progress = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      setState(() {
        if (_progress < 1.0) {
          _progress += 0.01;
        } else {
          timer.cancel();

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Portfolio()),
          );
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome to my portfolio. Have fun!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'By Raffaela Castro',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: AppColors.text200,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 175,
              height: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    progressIndicatorTheme: const ProgressIndicatorThemeData(
                      color: Colors.white,
                      linearTrackColor: Color(0xFF434343),
                    ),
                  ),
                  child: LinearProgressIndicator(
                    value: _progress,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
