import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/widgets/home_page_header_widget.dart';
import 'package:ogu_schedule/src/widgets/today_date_widget.dart';

class LectureListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) {
        final isEven = index&1 == 0;
        return Text('1');
//        Lecture(
//          backgroundColor: isEven?
//            Color.fromARGB(255, 245, 248, 251) : Colors.white,
//        );
      },
      itemCount: 30,
    ),
  );
}