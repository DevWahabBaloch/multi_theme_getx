import 'package:flutter/material.dart';

final ThemeData redTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.red,
    onPrimary: Colors.red,
    secondary: Colors.red,
    surface: const Color.fromARGB(94, 244, 67, 54),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.red.shade700,
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: Colors.red.shade50,
  iconTheme: const IconThemeData(color: Colors.red),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.red),
    bodyMedium: TextStyle(color: Colors.red),
    titleLarge: TextStyle(color: Colors.red),
    titleMedium: TextStyle(color: Colors.red),
  ),
);
