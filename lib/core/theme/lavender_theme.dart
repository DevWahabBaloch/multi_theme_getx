import 'package:flutter/material.dart';

final ThemeData lavenderTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color(0xFFE6E6FA),
    onPrimary: Color(0xFFE6E6FA),
    secondary: Color(0xFFE6E6FA),
    surface: const Color.fromARGB(200, 209, 196, 233),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFF9575CD),
      backgroundColor: const Color(0xFFE6E6FA),
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFF3E5F5),
  iconTheme: const IconThemeData(color: Color(0xFF9575CD)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF9575CD)),
    bodyMedium: TextStyle(color: Color(0xFF9575CD)),
    titleLarge: TextStyle(color: Color(0xFF9575CD)),
    titleMedium: TextStyle(color: Color(0xFF9575CD)),
  ),
);
