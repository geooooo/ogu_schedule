// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_lectures_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLecturesRequest extends GetLecturesRequest {
  @override
  final int groupId;
  @override
  final int timestampWeek;

  factory _$GetLecturesRequest(
          [void Function(GetLecturesRequestBuilder) updates]) =>
      (new GetLecturesRequestBuilder()..update(updates)).build();

  _$GetLecturesRequest._({this.groupId, this.timestampWeek}) : super._();

  @override
  GetLecturesRequest rebuild(
          void Function(GetLecturesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLecturesRequestBuilder toBuilder() =>
      new GetLecturesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLecturesRequest &&
        groupId == other.groupId &&
        timestampWeek == other.timestampWeek;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, groupId.hashCode), timestampWeek.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetLecturesRequest')
          ..add('groupId', groupId)
          ..add('timestampWeek', timestampWeek))
        .toString();
  }
}

class GetLecturesRequestBuilder
    implements Builder<GetLecturesRequest, GetLecturesRequestBuilder> {
  _$GetLecturesRequest _$v;

  int _groupId;
  int get groupId => _$this._groupId;
  set groupId(int groupId) => _$this._groupId = groupId;

  int _timestampWeek;
  int get timestampWeek => _$this._timestampWeek;
  set timestampWeek(int timestampWeek) => _$this._timestampWeek = timestampWeek;

  GetLecturesRequestBuilder();

  GetLecturesRequestBuilder get _$this {
    if (_$v != null) {
      _groupId = _$v.groupId;
      _timestampWeek = _$v.timestampWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLecturesRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetLecturesRequest;
  }

  @override
  void update(void Function(GetLecturesRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetLecturesRequest build() {
    final _$result = _$v ??
        new _$GetLecturesRequest._(
            groupId: groupId, timestampWeek: timestampWeek);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
