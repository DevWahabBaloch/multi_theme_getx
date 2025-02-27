import 'package:flutter/material.dart';

final ThemeData blueTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    onPrimary: Colors.blue,
    secondary: Colors.blue,
    surface: const Color.fromARGB(87, 33, 149, 243),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.blue.shade700,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: Colors.blue.shade50,
  iconTheme: const IconThemeData(color: Colors.blue),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.blue),
    bodyMedium: TextStyle(color: Colors.blue),
    titleLarge: TextStyle(color: Colors.blue),
    titleMedium: TextStyle(color: Colors.blue),
  ),
);
