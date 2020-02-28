import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/state/lecture.dart';
import 'package:ogu_schedule/src/widgets/lecture_widget.dart';

class LectureListWidget extends StatelessWidget {
  final BuiltList<Lecture> lectures;

  LectureListWidget({
    this.lectures,
  });

  @override
  Widget build(BuildContext context) => Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) {
        final isEven = index&1 == 0;
        return LectureWidget(
          number: index + 1,
          lecture: lectures[index],
          backgroundColor: isEven?
            Color.fromARGB(255, 245, 248, 251) : Colors.white,
        );
      },
      itemCount: lectures.length,
    ),
  );
}
