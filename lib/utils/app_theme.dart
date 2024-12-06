import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
     primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.grey,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlue))),
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: Colors.black, fontSize: 20)));

  static ThemeData darkTheme = ThemeData(
      primaryColor: Colors.yellow,
      scaffoldBackgroundColor: Colors.grey.shade900,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.white))),
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: Colors.red, fontSize: 20)));
}
