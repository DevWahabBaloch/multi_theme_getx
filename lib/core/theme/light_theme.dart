import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
    onPrimary: Colors.black,
    secondary: Colors.black,
    surface: Colors.white,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.orange, titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.grey,
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  ),
  brightness: Brightness.light,
);
