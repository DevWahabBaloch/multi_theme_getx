import 'package:flutter/material.dart';

final ThemeData orangeTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.orange,
    onPrimary: Colors.orange,
    secondary: Colors.orange,
    surface: const Color.fromARGB(90, 255, 153, 0),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.orange.shade700,
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: Colors.orange.shade50,
  iconTheme: const IconThemeData(color: Colors.orange),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.orange),
    bodyMedium: TextStyle(color: Colors.orange),
    titleLarge: TextStyle(color: Colors.orange),
    titleMedium: TextStyle(color: Colors.orange),
  ),
);
