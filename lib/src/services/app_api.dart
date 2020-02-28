import 'dart:convert';
import 'package:http/http.dart';
import 'package:ogu_schedule/src/models/api/get_lectures_request.dart';
import 'package:ogu_schedule/src/models/api/lecture.dart';
import 'package:ogu_schedule/src/models/exceptions/get_lectures_exception.dart';

abstract class AppApi {
  static const String host = 'http://oreluniver.ru';

  static Future<Iterable<Lecture>> getLectures(GetLecturesRequest request) async {
    try {
      await Future<Object>.delayed(Duration(seconds: 2));
      final response = await get('$host/schedule//${request.groupId}///${request.timestampWeek}/printschedule');
      final decodedBody = utf8.decode(response.bodyBytes);
      final lectureMaps = json.decode(decodedBody) as List<dynamic>;
      return lectureMaps.map((lectureMap) => Lecture.fromJson(lectureMap));
    } catch (_) {
      throw GetLecturesException();
    }
  }
}