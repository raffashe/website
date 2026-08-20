import 'dart:async';

import 'package:flutter/material.dart';
import 'package:raffashe/core/constants/colors.dart';
import 'package:raffashe/core/locale/locale_controller.dart';
import 'package:raffashe/core/theme/theme_mode_controller.dart';
import 'package:raffashe/features/portfolio/presentation/portfolio.dart';
import 'package:raffashe/l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.localeController, required this.themeModeController});

  final LocaleController localeController;
  final ThemeModeController themeModeController;

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
            MaterialPageRoute(
              builder: (context) => Portfolio(
                localeController: widget.localeController,
                themeModeController: widget.themeModeController,
              ),
            ),
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              l10n.splashWelcome,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              l10n.splashAuthor,
              style: const TextStyle(
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
