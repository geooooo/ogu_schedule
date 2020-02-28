import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ogu_schedule/src/intl/app_localizations.dart';
import 'package:ogu_schedule/src/models/enums/font.dart';

class TodayDateWidget extends StatelessWidget {
  static final TextStyle weekdayStyle = TextStyle(
    color: Color.fromRGBO(170, 170, 170, 1),
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static final TextStyle dateStyle = weekdayStyle.merge(TextStyle(
    fontFamily: Font.robotoSlab,
  ));

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context).localeName;
    final todayTime = DateTime.now();
    final date = DateFormat('dd.MM.yyyy', localeName).format(todayTime);
    final weekday = toBeginningOfSentenceCase(DateFormat.EEEE(localeName).format(todayTime));
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$weekday - ',
            style: weekdayStyle,
          ),
          Text(
            date,
            style: dateStyle
          ),
        ],
      ),
    );
  }
}