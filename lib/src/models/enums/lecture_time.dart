class LectureTime {
  static const LectureTime n1 = LectureTime._(
    number: 1,
    time: '8:30',
  );
  static const LectureTime n2 = LectureTime._(
    number: 2,
    time: '10:10',
  );
  static const LectureTime n3 = LectureTime._(
    number: 3,
    time: '12:00',
  );
  static const LectureTime n4 = LectureTime._(
    number: 4,
    time: '13:40',
  );
  static const LectureTime n5 = LectureTime._(
    number: 5,
    time: '15:20',
  );
  static const LectureTime n6 = LectureTime._(
    number: 6,
    time: '17:00',
  );
  static const LectureTime n7 = LectureTime._(
    number: 7,
    time: '18:40',
  );
  static const LectureTime n8 = LectureTime._(
    number: 8,
    time: '20:15',
  );

  static const List<LectureTime> _all = [
    n1, n2, n3, n4, n5, n6, n7, n8,
  ] ;

  static String byNumber(int number) => _all
    .firstWhere((lectureTime) => lectureTime.number == number)
    .time;

  final int number;
  final String time;

  const LectureTime._({
    this.number,
    this.time,
  });
}