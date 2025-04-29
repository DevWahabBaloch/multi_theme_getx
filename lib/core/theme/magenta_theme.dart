import 'package:flutter/material.dart';

final ThemeData magentaTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color(0xFFFF00FF),
    onPrimary: Color(0xFFFF00FF),
    secondary: Color(0xFFFF00FF),
    surface: const Color.fromARGB(66, 255, 0, 255),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFFAA00FF),
      backgroundColor: const Color(0xFFFF00FF),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFF8BBD0),
  iconTheme: const IconThemeData(color: Color(0xFFFF00FF)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFFF00FF)),
    bodyMedium: TextStyle(color: Color(0xFFFF00FF)),
    titleLarge: TextStyle(color: Color(0xFFFF00FF)),
    titleMedium: TextStyle(color: Color(0xFFFF00FF)),
  ),
);
