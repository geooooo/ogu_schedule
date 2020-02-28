import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/enums/font.dart';

class LectureLeadingInfoWidget extends StatelessWidget {
  static final TextStyle numberStyle = TextStyle(
    fontFamily: Font.robotoSlab,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Color.fromARGB(255, 39, 67, 90),
  );

  static final TextStyle timeStyle = TextStyle(
    fontFamily: Font.robotoSlab,
    fontSize: 16,
    color: Color.fromARGB(255, 39, 67, 90),
  );

  final int number;
  final String time;

  LectureLeadingInfoWidget({
    this.number,
    this.time,
  });

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.only(right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          number.toString(),
          style: numberStyle,
        ),
        Text(
          time,
          style: timeStyle,
        ),
      ],
    ),
  );
}