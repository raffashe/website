import 'package:flutter/material.dart';
import 'package:raffashe/core/locale/locale_controller.dart';
import 'package:raffashe/core/theme/theme_mode_controller.dart';
import 'package:raffashe/design_system/theme/ds_theme.dart';
import 'package:raffashe/l10n/app_localizations.dart';
import 'package:raffashe/features/portfolio/presentation/portfolio.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final localeController = LocaleController();
  final themeModeController = ThemeModeController();
  await localeController.loadSavedLocale();
  runApp(MyApp(localeController: localeController, themeModeController: themeModeController));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.localeController, required this.themeModeController});

  final LocaleController localeController;
  final ThemeModeController themeModeController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([localeController, themeModeController]),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          theme: DSTheme.light(),
          darkTheme: DSTheme.dark(),
          themeMode: themeModeController.mode,
          locale: localeController.locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Portfolio(
            localeController: localeController,
            themeModeController: themeModeController,
          ),
        );
      },
    );
  }
}
