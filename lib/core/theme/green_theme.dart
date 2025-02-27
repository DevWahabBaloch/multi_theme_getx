import 'package:flutter/material.dart';

final ThemeData greenTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.green,
    onPrimary: Colors.green,
    secondary: Colors.green,
    surface: const Color.fromARGB(99, 76, 175, 79),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.green.shade700,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: Colors.green.shade50,
  iconTheme: const IconThemeData(color: Colors.green),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.green),
    bodyMedium: TextStyle(color: Colors.green),
    titleLarge: TextStyle(color: Colors.green),
    titleMedium: TextStyle(color: Colors.green),
  ),
);
