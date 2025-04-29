import 'package:flutter/material.dart';

final ThemeData apricotTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color(0xFFFFB74D),
    onPrimary: Color(0xFFFFB74D),
    secondary: Color(0xFFFFB74D),
    surface: const Color.fromARGB(117, 255, 184, 77),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFFF57C00),
      backgroundColor: const Color(0xFFFFD1A4),
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFFFF3E0),
  iconTheme: const IconThemeData(color: Color(0xFFFFB74D)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFFFB74D)),
    bodyMedium: TextStyle(color: Color(0xFFFFB74D)),
    titleLarge: TextStyle(color: Color(0xFFFFB74D)),
    titleMedium: TextStyle(color: Color(0xFFFFB74D)),
  ),
);
