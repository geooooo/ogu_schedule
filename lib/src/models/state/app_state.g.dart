// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final bool isGetLecturesError;
  @override
  final BuiltList<Lecture> lectures;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.isGetLecturesError, this.lectures}) : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        isGetLecturesError == other.isGetLecturesError &&
        lectures == other.lectures;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isGetLecturesError.hashCode), lectures.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('isGetLecturesError', isGetLecturesError)
          ..add('lectures', lectures))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  bool _isGetLecturesError;
  bool get isGetLecturesError => _$this._isGetLecturesError;
  set isGetLecturesError(bool isGetLecturesError) =>
      _$this._isGetLecturesError = isGetLecturesError;

  ListBuilder<Lecture> _lectures;
  ListBuilder<Lecture> get lectures =>
      _$this._lectures ??= new ListBuilder<Lecture>();
  set lectures(ListBuilder<Lecture> lectures) => _$this._lectures = lectures;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _isGetLecturesError = _$v.isGetLecturesError;
      _lectures = _$v.lectures?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              isGetLecturesError: isGetLecturesError,
              lectures: _lectures?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lectures';
        _lectures?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
