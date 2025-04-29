import 'package:flutter/material.dart';

final ThemeData pinkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.pink,
    onPrimary: Colors.pink,
    secondary: Colors.pink,
    surface: const Color.fromARGB(101, 233, 30, 98),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.pink.shade700,
      backgroundColor: Colors.pink,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: Colors.pink.shade50,
  iconTheme: const IconThemeData(color: Colors.pink),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.pink),
    bodyMedium: TextStyle(color: Colors.pink),
    titleLarge: TextStyle(color: Colors.pink),
    titleMedium: TextStyle(color: Colors.pink),
  ),
);
