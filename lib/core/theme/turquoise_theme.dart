import 'package:flutter/material.dart';

final ThemeData turquoiseTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Color(0xFF40E0D0),
    onPrimary: Color(0xFF40E0D0),
    secondary: Color(0xFF64FFDA),
    surface: const Color(0xFFE0F7FA),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: const Color(0xFF0097A7),
      backgroundColor: const Color(0xFF40E0D0),
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFE0F7FA),
  iconTheme: const IconThemeData(color: Color(0xFF40E0D0)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF40E0D0)),
    bodyMedium: TextStyle(color: Color(0xFF40E0D0)),
    titleLarge: TextStyle(color: Color(0xFF40E0D0)),
    titleMedium: TextStyle(color: Color(0xFF40E0D0)),
  ),
);
