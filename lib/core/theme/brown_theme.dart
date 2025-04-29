import 'package:flutter/material.dart';

final ThemeData brownTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.brown,
    onPrimary: Colors.brown,
    secondary: Colors.brown,
    surface: const Color.fromARGB(101, 121, 85, 72),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.brown.shade700,
      backgroundColor: Colors.brown,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: Colors.brown.shade50,
  iconTheme: const IconThemeData(color: Colors.brown),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.brown),
    bodyMedium: TextStyle(color: Colors.brown),
    titleLarge: TextStyle(color: Colors.brown),
    titleMedium: TextStyle(color: Colors.brown),
  ),
);
