import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ogu_schedule/src/intl/app_localizations.dart';
import 'package:ogu_schedule/src/models/enums/font.dart';

class TodayDateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context).localeName;
    final todayTime = DateTime.now();
    final date = DateFormat('dd.MM.yyyy', localeName).format(todayTime);
    final dayWeek = toBeginningOfSentenceCase(DateFormat.EEEE(localeName).format(todayTime));
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$dayWeek - ',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            date,
            style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(
              fontFamily: Font.robotoSlab,
            )),
          ),
        ],
      ),
    );
  }
}