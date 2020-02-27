import 'package:json_annotation/json_annotation.dart';

part 'lecture.g.dart';

@JsonSerializable()
class Lecture {
  @JsonKey(name: 'TitleSubject')
  final String title;

  @JsonKey(name: 'TypeLesson')
  final String type;

  @JsonKey(name: 'NumberLesson')
  final int lectureNumber;

  @JsonKey(name: 'DayWeek')
  final int weekday;

  @JsonKey(
    name: 'Korpus',
    fromJson: _stringToInt,
  )
  final int houseNumber;

  @JsonKey(name: 'NumberRoom')
  final String room;

  @JsonKey(name: 'Family')
  final String secondName;

  @JsonKey(name: 'Name')
  final String firstName;

  @JsonKey(name: 'SecondName')
  final String middleName;

  Lecture({
    this.firstName,
    this.houseNumber,
    this.lectureNumber,
    this.middleName,
    this.room,
    this.secondName,
    this.title,
    this.type,
    this.weekday,
  });

  factory Lecture.fromJson(Map<String, dynamic> json) => _$LectureFromJson(json);
  Map<String, dynamic> toJson() => _$LectureToJson(this);

  static int _stringToInt(String value) => int.parse(value);
}