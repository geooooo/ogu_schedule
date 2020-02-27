import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ogu_schedule/src/intl/messages_all.dart';

class AppLocalizations {
  final String localeName;

  AppLocalizations(this.localeName);

  static Future<AppLocalizations> load(Locale locale) {
    final localeName = Intl.canonicalizedLocale(locale.languageCode.toString());
    return initializeMessages(localeName).then((_) => AppLocalizations(localeName));
  }

  static AppLocalizations of(BuildContext context) =>
    Localizations.of<AppLocalizations>(context, AppLocalizations);

  String get scheduleLecturesTurgenevUniversityText => Intl.message(
    'Расписание занятий ОГУ им. Тургенева',
    name: 'AppLocalizations_scheduleLecturesTurgenevUniversityText',
    locale: localeName,
  );

  String get scheduleForTodayText => Intl.message(
    'Расписание на сегодня',
    name: 'AppLocalizations_scheduleForTodayText',
    locale: localeName,
  );

  String get pgm71Text => Intl.message(
    '71-ПГм',
    name: 'AppLocalizations_pgm71Text',
    locale: localeName,
  );
}