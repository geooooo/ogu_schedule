import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:ogu_schedule/src/models/state/lecture.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  @nullable
  bool get isGetLecturesError;

  @nullable
  bool get isGetLectureSuccess;

  @nullable
  BuiltList<Lecture> get lectures;

  AppState._();
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}