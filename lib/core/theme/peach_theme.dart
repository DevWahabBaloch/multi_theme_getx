import 'package:flutter/material.dart';

final ThemeData peachTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color(0xFFFFE5B4),
    onPrimary: Color(0xFFFFE5B4),
    secondary: Color(0xFFFFCC80),
    surface: const Color.fromARGB(164, 255, 243, 224),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFFFFB74D),
      backgroundColor: const Color(0xFFFFE5B4),
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
