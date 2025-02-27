import 'package:flutter/material.dart';
import 'package:multi_theme_getx/core/theme/blue_theme.dart';
import 'package:multi_theme_getx/core/theme/dark_theme.dart';
import 'package:multi_theme_getx/core/theme/green_theme.dart';
import 'package:multi_theme_getx/core/theme/light_theme.dart';
import 'package:multi_theme_getx/core/theme/orange_theme.dart';
import 'package:multi_theme_getx/core/theme/purple_theme.dart';

class AppThemes {
  static ThemeData get darkMode => darkTheme;

  static ThemeData get lightMode => lightTheme;

  static ThemeData get purpleMode => purpleTheme;

  static ThemeData get orangeMode => orangeTheme;

  static ThemeData get greenMode => greenTheme;

  static ThemeData get blueMode => blueTheme;
}
