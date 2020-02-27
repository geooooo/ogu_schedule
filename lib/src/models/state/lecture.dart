import 'package:built_value/built_value.dart';

part 'lecture.g.dart';

abstract class Lecture implements Built<Lecture, LectureBuilder> {
  @nullable
  String get title;

  @nullable
  String get type;

  @nullable
  int get houseNumber;

  @nullable
  String get room;

  @nullable
  String get teacherName;

  @nullable
  String get timeBegin;

  Lecture._();
  factory Lecture([void Function(LectureBuilder) updates]) = _$Lecture;
}