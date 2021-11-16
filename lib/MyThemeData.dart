import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThemeData {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      headline2: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 21,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}
