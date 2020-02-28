import 'package:ogu_schedule/src/models/api/get_lectures_request.dart';
import 'package:ogu_schedule/src/models/api/lecture.dart' as api;
import 'package:ogu_schedule/src/models/enums/lecture_time.dart';
import 'package:ogu_schedule/src/models/state/lecture.dart' as state;
import 'package:ogu_schedule/src/services/app_api.dart';

abstract class AppLoader {
  static Future<Iterable<state.Lecture>> getLectures({
    int groupId,
    int timestampWeek,
  }) async {
    final request = GetLecturesRequest((b) => b
      ..groupId = groupId
      ..timestampWeek = timestampWeek
    );
    final lectures = await AppApi.getLectures(request);

    final currentWeekday = DateTime.now().weekday;
    final todayLectures = lectures.where((lecture) => lecture.weekday == currentWeekday).toList();
    todayLectures.sort(_lectureComparator);

    return todayLectures.map((lecture) => state.Lecture((b) => b
      ..title = lecture.title
      ..type = lecture.type
      ..room = lecture.room
      ..houseNumber = lecture.houseNumber
      ..teacherName = _formatTeacherName(lecture.firstName, lecture.secondName, lecture.middleName)
      ..time = LectureTime.byNumber(lecture.lectureNumber)
    ));
  }

  static int _lectureComparator(api.Lecture lecture1, api.Lecture lecture2) =>
    lecture1.lectureNumber - lecture2.lectureNumber;

  static String _formatTeacherName(String firstName, String secondName, String middleName) =>
    '$firstName ${secondName[0].toUpperCase()}.${middleName[0].toUpperCase()}.';
}