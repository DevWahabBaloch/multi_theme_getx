import 'package:flutter/material.dart';

final ThemeData plumTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color.fromARGB(255, 153, 71, 143),
    onPrimary: Color.fromARGB(255, 153, 71, 143),
    secondary: Color.fromARGB(255, 153, 71, 143),
    surface: const Color.fromARGB(104, 142, 69, 134),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFF6A1B9A),
      backgroundColor: const Color(0xFF8E4585),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFF3E5F5),
  iconTheme: const IconThemeData(color: Color(0xFF8E4585)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF8E4585)),
    bodyMedium: TextStyle(color: Color(0xFF8E4585)),
    titleLarge: TextStyle(color: Color(0xFF8E4585)),
    titleMedium: TextStyle(color: Color(0xFF8E4585)),
  ),
);
