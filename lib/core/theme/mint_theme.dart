import 'package:flutter/material.dart';

final ThemeData mintTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color(0xFF98FF98),
    onPrimary: Color(0xFF98FF98),
    secondary: Color(0xFF98FF98),
    surface: const Color.fromARGB(90, 152, 255, 152),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFF26A69A),
      backgroundColor: const Color(0xFF98FF98),
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFE0F2F1),
  iconTheme: const IconThemeData(color: Color(0xFF26A69A)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF26A69A)),
    bodyMedium: TextStyle(color: Color(0xFF26A69A)),
    titleLarge: TextStyle(color: Color(0xFF26A69A)),
    titleMedium: TextStyle(color: Color(0xFF26A69A)),
  ),
);
