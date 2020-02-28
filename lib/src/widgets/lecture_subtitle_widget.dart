import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/enums/font.dart';

class LectureSubtitleWidget extends StatelessWidget {
  static final TextStyle houseRoomNumbersStyle = TextStyle(
    fontFamily: Font.robotoSlab,
    fontSize: 14,
    color: Color.fromARGB(255, 96, 145, 186),
  );

  static final TextStyle teacherNameStyle = TextStyle(
    fontSize: 14,
    color: Color.fromARGB(255, 96, 145, 186),
  );

  final int houseNumber;
  final String room;
  final String teacherName;

  LectureSubtitleWidget({
    this.houseNumber,
    this.room,
    this.teacherName,
  });

  @override
  Widget build(BuildContext context) => Row(
    children: <Widget>[
      Text(
        '$houseNumber-$room',
        style: houseRoomNumbersStyle,
      ),
      Container(
        child: Text(' ' * 3),
      ),
      Flexible(
        child: Text(
          teacherName,
          overflow: TextOverflow.ellipsis,
          style: teacherNameStyle,
        ),
      ),
    ],
  );
}