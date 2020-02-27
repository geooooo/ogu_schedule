import 'package:ogu_schedule/src/services/app_service.dart';

Future<void> main() async {
  await AppService.getLectures();
  print(AppService.state.lectures);
  print(AppService.state.isGetLecturesError);
}