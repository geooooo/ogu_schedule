import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/state/lecture.dart';
import 'package:ogu_schedule/src/widgets/home_page_header_widget.dart';
import 'package:ogu_schedule/src/widgets/lecture_leading_info_widget.dart';
import 'package:ogu_schedule/src/widgets/lecture_subtitle_widget.dart';
import 'package:ogu_schedule/src/widgets/lecture_title_widget.dart';
import 'package:ogu_schedule/src/widgets/today_date_widget.dart';

class LectureWidget extends StatelessWidget {
  final Lecture lecture;
  final Color backgroundColor;
  final int number;

  LectureWidget({
    this.number,
    this.lecture,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
    ),
    child: ListTile(
      leading: LectureLeadingInfoWidget(
        number: number,
        time: lecture.time,
      ),
      title: LectureTitleWidget(
        title: lecture.title,
        type: lecture.type,
      ),
      subtitle: LectureSubtitleWidget(
        houseNumber: lecture.houseNumber,
        room: lecture.room,
        teacherName: lecture.teacherName,
      ),
    ),
  );
}