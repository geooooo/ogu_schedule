// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lecture _$LectureFromJson(Map<String, dynamic> json) {
  return Lecture(
    firstName: json['Name'] as String,
    houseNumber: Lecture._stringToInt(json['Korpus'] as String),
    lectureNumber: json['NumberLesson'] as int,
    middleName: json['SecondName'] as String,
    room: json['NumberRoom'] as String,
    secondName: json['Family'] as String,
    title: json['TitleSubject'] as String,
    type: json['TypeLesson'] as String,
    weekday: json['DayWeek'] as int,
  );
}

Map<String, dynamic> _$LectureToJson(Lecture instance) => <String, dynamic>{
      'TitleSubject': instance.title,
      'TypeLesson': instance.type,
      'NumberLesson': instance.lectureNumber,
      'DayWeek': instance.weekday,
      'Korpus': instance.houseNumber,
      'NumberRoom': instance.room,
      'Family': instance.secondName,
      'Name': instance.firstName,
      'SecondName': instance.middleName,
    };
