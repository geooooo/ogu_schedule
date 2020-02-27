import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/enums/font.dart';

final ThemeData theme = ThemeData(
  fontFamily: Font.roboto,
  primaryColor: Color.fromRGBO(95, 145, 187, 1),
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 20,
      letterSpacing: 1,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      color: Color.fromRGBO(170, 170, 170, 1),
      fontWeight: FontWeight.normal,
      fontSize: 16,
    ),
  ),
);