import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/intl/app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  static const List<String> supportedLocales = [
    'ru',
  ];

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => supportedLocales.contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}