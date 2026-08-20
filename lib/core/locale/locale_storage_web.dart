import 'dart:html' as html;

import 'package:flutter/material.dart';

class LocaleStorageImpl {
  static const _storageKey = 'portfolio_locale';

  static Future<Locale?> readLocale() async {
    final value = html.window.localStorage[_storageKey];
    if (value == null || value.isEmpty) {
      return null;
    }
    return _parseLocale(value);
  }

  static Future<void> saveLocale(Locale locale) async {
    html.window.localStorage[_storageKey] = _encodeLocale(locale);
  }

  static Locale? _parseLocale(String value) {
    switch (value) {
      case 'en':
        return const Locale('en');
      case 'pt_BR':
        return const Locale('pt', 'BR');
      default:
        return null;
    }
  }

  static String _encodeLocale(Locale locale) {
    if (locale.languageCode == 'pt') {
      return 'pt_BR';
    }
    return 'en';
  }
}
