import 'package:flutter/material.dart';

class MyAppTheme {
  static List<ThemeData> themes = [
    ThemeData(
      primaryColor: Colors.teal,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 22),
        bodyMedium: TextStyle(fontSize: 20),
        bodySmall: TextStyle(fontSize: 18),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.teal,
      ),
      iconTheme: const IconThemeData(
        size: 20,
      ),
    ),
    ThemeData(
      primaryColor: Colors.red,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 22),
        bodyMedium: TextStyle(fontSize: 20),
        bodySmall: TextStyle(fontSize: 18),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.red,
      ),
    ),
  ];
}
