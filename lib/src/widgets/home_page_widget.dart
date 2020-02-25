import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/widgets/home_page_header_widget.dart';
import 'package:ogu_schedule/src/widgets/today_date_widget.dart';

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Center(
        child: HomePageHeaderWidget(),
      ),
    ),
    body: Column(
      children: <Widget>[
        TodayDateWidget(),
//        LectureListWidget(),
      ],
    ),
  );
}