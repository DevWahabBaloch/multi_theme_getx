import 'package:flutter/material.dart';

final ThemeData coralTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color(0xFFFF6F61),
    onPrimary: Color(0xFFFF6F61),
    secondary: Color(0xFFFF6F61),
    surface: const Color.fromARGB(118, 255, 110, 97),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFFE65100),
      backgroundColor: const Color(0xFFFF6F61),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFFFEBEE),
  iconTheme: const IconThemeData(color: Color(0xFFFF6F61)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFFF6F61)),
    bodyMedium: TextStyle(color: Color(0xFFFF6F61)),
    titleLarge: TextStyle(color: Color(0xFFFF6F61)),
    titleMedium: TextStyle(color: Color(0xFFFF6F61)),
  ),
);
