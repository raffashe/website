import 'package:flutter/material.dart';

import 'locale_storage.dart';

class LocaleController extends ChangeNotifier {
  LocaleController({Locale? initialLocale})
      : _locale = initialLocale ?? const Locale('en');

  static const Locale defaultLocale = Locale('en');
  static const Locale portugueseLocale = Locale('pt', 'BR');

  Locale _locale;

  Locale get locale => _locale;

  Future<void> loadSavedLocale() async {
    final saved = await LocaleStorage.readLocale();
    if (saved != null) {
      _locale = saved;
      notifyListeners();
    }
  }

  Future<void> setEnglish() => setLocale(defaultLocale);

  Future<void> setPortuguese() => setLocale(portugueseLocale);

  Future<void> setLocale(Locale locale) async {
    if (_locale == locale) {
      return;
    }
    _locale = locale;
    await LocaleStorage.saveLocale(locale);
    notifyListeners();
  }
}
