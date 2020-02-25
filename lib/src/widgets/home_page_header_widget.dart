import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/intl/app_localizations.dart';

class HomePageHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(
    AppLocalizations.of(context).scheduleForTodayText,
    style: Theme.of(context).textTheme.headline6,
  );
}