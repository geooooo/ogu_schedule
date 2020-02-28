import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/state/lecture.dart';
import 'package:ogu_schedule/src/widgets/home_page_header_widget.dart';
import 'package:ogu_schedule/src/widgets/lecture_leading_info_widget.dart';
import 'package:ogu_schedule/src/widgets/today_date_widget.dart';

class LectureTitleWidget extends StatelessWidget {
  static final titleStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 39, 67, 90),
  );

  static final typeStyle = TextStyle(
    fontSize: 15,
    color: Color.fromARGB(255, 39, 67, 90),
  );

  final String title;
  final String type;

  LectureTitleWidget({
    this.title,
    this.type,
  });

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.only(bottom: 5),
    child: Row(
      children: <Widget>[
        Flexible(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: titleStyle,
          ),
        ),
        Container(
          child: Text(' ' * 1),
        ),
       Text(
          '($type.)',
          style: typeStyle,
        ),
      ],
    ),
  );
}