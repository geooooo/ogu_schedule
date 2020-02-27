import 'package:built_value/built_value.dart';

part 'get_lectures_request.g.dart';

abstract class GetLecturesRequest implements Built<GetLecturesRequest, GetLecturesRequestBuilder> {
  @nullable
  int get groupId;

  @nullable
  int get timestampWeek;

  GetLecturesRequest._();
  factory GetLecturesRequest([void Function(GetLecturesRequestBuilder) updates]) = _$GetLecturesRequest;
}