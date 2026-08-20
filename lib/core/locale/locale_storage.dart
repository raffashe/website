import 'package:flutter/material.dart';

import 'locale_storage_stub.dart'
    if (dart.library.html) 'locale_storage_web.dart';

abstract class LocaleStorage {
  static Future<Locale?> readLocale() => LocaleStorageImpl.readLocale();

  static Future<void> saveLocale(Locale locale) =>
      LocaleStorageImpl.saveLocale(locale);
}
