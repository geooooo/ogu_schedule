import 'dart:async';
import 'package:ogu_schedule/src/models/enums/group.dart';
import 'package:ogu_schedule/src/models/exceptions/get_lectures_exception.dart';
import 'package:ogu_schedule/src/models/state/app_state.dart';
import 'package:ogu_schedule/src/models/state/lecture.dart';
import 'package:ogu_schedule/src/services/app_loader.dart';

typedef StateUpdater = void Function(AppStateBuilder);

abstract class AppService {
  static final StreamController<StateUpdater> _updateController = StreamController<StateUpdater>();

  static Stream<StateUpdater> get update => _updateController.stream;

  static AppState stateFactory() => AppState((b) => b
    ..lectures.replace(<Lecture>[])
    ..isGetLecturesError = false
  );

  static Future<void> getLectures() async {
    try {
      final lectures = await AppLoader.getLectures(
        groupId: Group.pgm71.id,
        timestampWeek: _timestampCurrentWeek,
      );
      print(lectures);
      _update((b) => b.lectures.replace(lectures));
    } on GetLecturesException {
      _update((b) => b.isGetLecturesError = true);
    }
  }

  static void _update(StateUpdater stateUpdater) =>
    _updateController.add(stateUpdater);

  static int get _timestampCurrentWeek {
    final currentTime = DateTime.now();
    final currentWeekday = currentTime.weekday;
    return currentTime.subtract(Duration(days: currentWeekday)).millisecondsSinceEpoch;
  }
}