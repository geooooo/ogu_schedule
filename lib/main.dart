import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

final Map<String, String> fonts = {
  'roboto': 'Roboto',
  'robotoSlab': 'RobotoSlab',
};

final Map<String, String> intl = {
  'appTitle': 'Расписание занятий ОГУ им. Тургенева - 71ПГм',
  'homePageTitle': 'Расписание на сегодня',
};

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: intl['appTitle'],
      theme: ThemeData(
        fontFamily: fonts['roboto'],
      ),
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
      backgroundColor: Color.fromARGB(255, 95, 145, 187),
      title: Center(
        child: HomePageHeader(),
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

class HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(
    intl['homePageTitle'],
    style: TextStyle(
      fontSize: 20,
      letterSpacing: 1,
    ),
  );
}

class NowDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    padding: EdgeInsets.symmetric(
      vertical: 8,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Понедельник - ',
          style: TextStyle(
            color: Color.fromARGB(255, 170, 170, 170),
            fontSize: 16,
          ),
        ),
        Text(
          '01.01.2010',
          style: TextStyle(
            fontFamily: fonts['robotoSlab'],
            color: Color.fromARGB(255, 170, 170, 170),
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

class LectureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) {
        final isEven = index&1 == 0;
        return Lecture(
          backgroundColor: isEven?
            Color.fromARGB(255, 245, 248, 251) : Colors.white,
        );
      },
      itemCount: 30,
    ),
  );
}

class Lecture extends StatelessWidget {
  final Color backgroundColor;

  Lecture({
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
    ),
    child: ListTile(
      leading: LectureLeadingInfo(),
      title: LectureTitle(),
      subtitle: LectureSubtitle(),
    ),
  );
}

class LectureLeadingInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.only(right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          '1',
          style: TextStyle(
            fontFamily: fonts['robotoSlab'],
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color.fromARGB(255, 39, 67, 90),
          ),
        ),
        Text(
          '23:59',
          style: TextStyle(
            fontFamily: fonts['robotoSlab'],
            fontSize: 16,
            color: Color.fromARGB(255, 39, 67, 90),
          ),
        ),
      ],
    ),
  );
}

  class LectureTitle extends StatelessWidget {
    @override
    Widget build(BuildContext context) => Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Text(
              'Программная инженерия',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 39, 67, 90),
              ),
            ),
          ),
          Container(
            child: Text(' ' * 1),
          ),
         Text(
            '(лек.)',
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 39, 67, 90),
            ),
          ),
        ],
      ),
    );
  }

  class LectureSubtitle extends StatelessWidget {
    @override
    Widget build(BuildContext context) => Row(
      children: <Widget>[
        Text(
          '123',
          style: TextStyle(
            fontFamily: fonts['robotoSlab'],
            fontSize: 14,
            color: Color.fromARGB(255, 96, 145, 186),
          ),
        ),
        Container(
          child: Text(' ' * 3),
        ),
        Flexible(
          child: Text(
            'Кузьмиииииииииичччччччч Д.В.',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 96, 145, 186),
            ),
          ),
        ),
      ],
    );
  }