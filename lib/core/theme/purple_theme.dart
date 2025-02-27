import 'package:flutter/material.dart';

final ThemeData purpleTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.purple,
    onPrimary: Colors.purple,
    secondary: Colors.purple,
    surface: const Color.fromARGB(136, 155, 39, 176),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.purple.shade700,
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  ),
  scaffoldBackgroundColor: Colors.purple.shade50,
  iconTheme: const IconThemeData(color: Colors.purple),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.purple),
    bodyMedium: TextStyle(color: Colors.purple),
    titleLarge: TextStyle(color: Colors.purple),
    titleMedium: TextStyle(color: Colors.purple),
  ),
);
