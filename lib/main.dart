import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/widgets/app_widget.dart';

void main() => runApp(AppWidget());









//
//
//
//
//
//class Lecture extends StatelessWidget {
//  final Color backgroundColor;
//
//  Lecture({
//    this.backgroundColor,
//  });
//
//  @override
//  Widget build(BuildContext context) => Container(
//    decoration: BoxDecoration(
//      color: backgroundColor,
//    ),
//    child: ListTile(
//      leading: LectureLeadingInfo(),
//      title: LectureTitle(),
//      subtitle: LectureSubtitle(),
//    ),
//  );
//}
//
//class LectureLeadingInfo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) => Container(
//    padding: EdgeInsets.only(right: 10),
//    child: Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      crossAxisAlignment: CrossAxisAlignment.end,
//      children: <Widget>[
//        Text(
//          '1',
//          style: TextStyle(
//            fontFamily: fonts['robotoSlab'],
//            fontWeight: FontWeight.bold,
//            fontSize: 16,
//            color: Color.fromARGB(255, 39, 67, 90),
//          ),
//        ),
//        Text(
//          '23:59',
//          style: TextStyle(
//            fontFamily: fonts['robotoSlab'],
//            fontSize: 16,
//            color: Color.fromARGB(255, 39, 67, 90),
//          ),
//        ),
//      ],
//    ),
//  );
//}
//
//  class LectureTitle extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) => Container(
//      padding: EdgeInsets.only(bottom: 5),
//      child: Row(
//        children: <Widget>[
//          Flexible(
//            child: Text(
//              'Программная инженерия',
//              overflow: TextOverflow.ellipsis,
//              style: TextStyle(
//                fontSize: 15,
//                fontWeight: FontWeight.bold,
//                color: Color.fromARGB(255, 39, 67, 90),
//              ),
//            ),
//          ),
//          Container(
//            child: Text(' ' * 1),
//          ),
//         Text(
//            '(лек.)',
//            style: TextStyle(
//              fontSize: 15,
//              color: Color.fromARGB(255, 39, 67, 90),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//  class LectureSubtitle extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) => Row(
//      children: <Widget>[
//        Text(
//          '123',
//          style: TextStyle(
//            fontFamily: fonts['robotoSlab'],
//            fontSize: 14,
//            color: Color.fromARGB(255, 96, 145, 186),
//          ),
//        ),
//        Container(
//          child: Text(' ' * 3),
//        ),
//        Flexible(
//          child: Text(
//            'Кузьмиииииииииичччччччч Д.В.',
//            overflow: TextOverflow.ellipsis,
//            style: TextStyle(
//              fontSize: 14,
//              color: Color.fromARGB(255, 96, 145, 186),
//            ),
//          ),
//        ),
//      ],
//    );
//  }