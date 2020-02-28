import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/intl/app_localizations.dart';
import 'package:ogu_schedule/src/models/data/common_style.dart';

class HomePageHeaderWidget extends StatelessWidget {
  static final TextStyle textStyle = TextStyle(
    fontSize: 20,
    letterSpacing: 1,
    color: CommonStyle.backgroundColor,
  );

  @override
  Widget build(BuildContext context) => Text(
    AppLocalizations.of(context).scheduleForTodayText,
    style: textStyle,
  );
}