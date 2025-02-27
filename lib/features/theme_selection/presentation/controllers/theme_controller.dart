import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:multi_theme_getx/core/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemesController extends GetxController {
  static const String _themeKey = 'selected_theme';
  late SharedPreferences _prefs;

  var currentTheme = AppThemes.lightMode.obs;

  @override
  void onInit() async {
    super.onInit();
    _prefs = await SharedPreferences.getInstance();
    _loadThemeFromPrefs();
  }

  Future<void> _saveThemeToPrefs(String themeName) async {
    await _prefs.setString(_themeKey, themeName);
    log('Theme saved to prefs: $themeName');
  }

  void _loadThemeFromPrefs() {
    final savedThemeName = _prefs.getString(_themeKey) ?? 'light';
    switch (savedThemeName) {
      case 'light':
        currentTheme.value = AppThemes.lightMode;
        break;
      case 'dark':
        currentTheme.value = AppThemes.darkMode;
        break;
      case 'purple':
        currentTheme.value = AppThemes.purpleMode;
        break;
      case 'green':
        currentTheme.value = AppThemes.greenMode;
        break;
      case 'orange':
        currentTheme.value = AppThemes.orangeMode;
        break;
      case 'blue':
        currentTheme.value = AppThemes.blueMode;
        break;
      default:
        currentTheme.value = AppThemes.lightMode;
    }
  }

  void setTheme(String themeName, ThemeData themeData) {
    currentTheme.value = themeData;
    log('Selected Theme Data: $themeData');
    _saveThemeToPrefs(themeName);
    log('Theme changed to: $themeName');
  }

  void setLightTheme() {
    setTheme('light', AppThemes.lightMode);
    log('Light theme Selected');
  }

  void setDarkTheme() {
    setTheme('dark', AppThemes.darkMode);
    log('Light theme Selected');
  }

  void setPurpleTheme() {
    setTheme('purple', AppThemes.purpleMode);
    log('Light theme Selected');
  }

  void setOrangeTheme() {
    setTheme('orange', AppThemes.orangeMode);
    log('Light theme Selected');
  }

  void setGreenTheme() {
    setTheme('green', AppThemes.greenMode);
    log('Light theme Selected');
  }

  void setBlueTheme() {
    setTheme('blue', AppThemes.blueMode);
    log('Light theme Selected');
  }
}
