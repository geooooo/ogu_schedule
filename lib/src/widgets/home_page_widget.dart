import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/state/app_state.dart';
import 'package:ogu_schedule/src/services/app_service.dart';
import 'package:ogu_schedule/src/widgets/home_page_header_widget.dart';
import 'package:ogu_schedule/src/widgets/lecture_list_widget.dart';
import 'package:ogu_schedule/src/widgets/today_date_widget.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  AppState state = AppService.stateFactory();

  @override
  void initState() {
    super.initState();
    AppService.update.listen(
      (StateUpdater updater) => setState(() => state = state.rebuild(updater))
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Center(
        child: HomePageHeaderWidget(),
      ),
    ),
    body: state.isGetLecturesError? Text('+') : Column(
      children: <Widget>[
        TodayDateWidget(),
        Text(state.isGetLecturesError.toString()),
        Text(state.lectures.toString()),
//        LectureListWidget(),
      ],
    ),
  );
}