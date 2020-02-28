import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/intl/app_localizations.dart';
import 'package:ogu_schedule/src/models/state/app_state.dart';
import 'package:ogu_schedule/src/services/app_service.dart';
import 'package:ogu_schedule/src/widgets/home_page_header_widget.dart';
import 'package:ogu_schedule/src/widgets/lecture_list_widget.dart';
import 'package:ogu_schedule/src/widgets/loader_widget.dart';
import 'package:ogu_schedule/src/widgets/today_date_widget.dart';
import 'package:ogu_schedule/src/widgets/zero_state_widget.dart';

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
    AppService.getLectures();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Center(
        child: HomePageHeaderWidget(),
      ),
    ),
    body: Center(
      child: Column(
        children: <Widget>[
          if (!state.isGetLecturesError && !state.isGetLectureSuccess) LoaderWidget(
            caption: AppLocalizations.of(context).loadingScheduleText,
          ) else if (state.isGetLecturesError) ZeroStateWidget(
            pic: Icons.sentiment_very_dissatisfied,
            description: AppLocalizations.of(context).errorOnGetScheduleTryRestartApplicationText,
          ) else if (state.isGetLectureSuccess && state.lectures.isEmpty) ZeroStateWidget(
            pic: Icons.sentiment_very_satisfied,
            description: AppLocalizations.of(context).noLecturesText,
          ) else ...<Widget>[
          TodayDateWidget(),
          LectureListWidget(
            lectures: state.lectures,
          ),
        ]],
      ),
    ),
  );
}