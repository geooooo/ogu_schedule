import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ogu_schedule/src/intl/app_localizations.dart';
import 'package:ogu_schedule/src/intl/app_localizations_delegate.dart';
import 'package:ogu_schedule/src/models/data/theme.dart';
import 'package:ogu_schedule/src/widgets/home_page_widget.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    localizationsDelegates: [
      AppLocalizationsDelegate(),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('ru'),
    ],
    onGenerateTitle: (BuildContext context) => AppLocalizations.of(context).scheduleLecturesTurgenevUniversityText,
    theme: theme,
    home: SafeArea(
      child: HomePageWidget(),
    ),
  );
}