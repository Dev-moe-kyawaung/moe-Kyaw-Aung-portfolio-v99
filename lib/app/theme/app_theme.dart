import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0A0A0A),
    primaryColor: const Color(0xFF00D9A5),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0A0A), elevation: 0),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFFE0E0E0)),
      bodyMedium: TextStyle(color: Color(0xFFB0B0B0)),
    ),
  );
}
