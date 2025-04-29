import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    onPrimary: Colors.white,
    secondary: Colors.black,
    surface: Colors.black,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.green, titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      overlayColor: Colors.grey,
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  ),
  brightness: Brightness.dark,
);
