// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Lecture extends Lecture {
  @override
  final String title;
  @override
  final String type;
  @override
  final int houseNumber;
  @override
  final String room;
  @override
  final String teacherName;
  @override
  final String timeBegin;

  factory _$Lecture([void Function(LectureBuilder) updates]) =>
      (new LectureBuilder()..update(updates)).build();

  _$Lecture._(
      {this.title,
      this.type,
      this.houseNumber,
      this.room,
      this.teacherName,
      this.timeBegin})
      : super._();

  @override
  Lecture rebuild(void Function(LectureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LectureBuilder toBuilder() => new LectureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lecture &&
        title == other.title &&
        type == other.type &&
        houseNumber == other.houseNumber &&
        room == other.room &&
        teacherName == other.teacherName &&
        timeBegin == other.timeBegin;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), type.hashCode),
                    houseNumber.hashCode),
                room.hashCode),
            teacherName.hashCode),
        timeBegin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Lecture')
          ..add('title', title)
          ..add('type', type)
          ..add('houseNumber', houseNumber)
          ..add('room', room)
          ..add('teacherName', teacherName)
          ..add('timeBegin', timeBegin))
        .toString();
  }
}

class LectureBuilder implements Builder<Lecture, LectureBuilder> {
  _$Lecture _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _houseNumber;
  int get houseNumber => _$this._houseNumber;
  set houseNumber(int houseNumber) => _$this._houseNumber = houseNumber;

  String _room;
  String get room => _$this._room;
  set room(String room) => _$this._room = room;

  String _teacherName;
  String get teacherName => _$this._teacherName;
  set teacherName(String teacherName) => _$this._teacherName = teacherName;

  String _timeBegin;
  String get timeBegin => _$this._timeBegin;
  set timeBegin(String timeBegin) => _$this._timeBegin = timeBegin;

  LectureBuilder();

  LectureBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _type = _$v.type;
      _houseNumber = _$v.houseNumber;
      _room = _$v.room;
      _teacherName = _$v.teacherName;
      _timeBegin = _$v.timeBegin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Lecture other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Lecture;
  }

  @override
  void update(void Function(LectureBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Lecture build() {
    final _$result = _$v ??
        new _$Lecture._(
            title: title,
            type: type,
            houseNumber: houseNumber,
            room: room,
            teacherName: teacherName,
            timeBegin: timeBegin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
