import 'package:flutter/material.dart';

void main() => runApp(App());

final ThemeData appTheme = ThemeData();

final Map<String, String> intl = {
  'appTitle': 'Расписание занятий ОГУ им. Тургенева - 71ПГм',
  'homePageTitle': 'Расписание на сегодня',
};

final List<Lecture> lectures = [for (var i = 0; i < 10; i++) Lecture()];

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: intl['appTitle'],
      theme: appTheme,
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text(intl['homePageTitle']),
      ),
    ),
    body: Column(
      children: <Widget>[
        NowDate(),
        LectureList(),
      ],
    ),
  );
}

class NowDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Понедельник'),
        Text('01.01.2010'),
      ],
    ),
  );
}

class LectureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) => lectures[index],
      itemCount: lectures.length,
    ),
  );
}

class Lecture extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListTile(
    leading: LectureLeadingInfo(),
    title: LectureTitle(),
    subtitle: LectureSubtitle(),
  );
}

class LectureLeadingInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      Text('1'),
      Text('23:59'),
    ],
  );
}

  class LectureTitle extends StatelessWidget {
    @override
    Widget build(BuildContext context) => Row(
      children: <Widget>[
        Text('Программная инженерия'),
        Text('(лек.)'),
      ],
    );
  }

  class LectureSubtitle extends StatelessWidget {
    @override
    Widget build(BuildContext context) => Row(
      children: <Widget>[
        Text('123'),
        Text('Кузьмич Д.В.'),
      ],
    );
  }