import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_theme_getx/core/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemesController extends GetxController {
  static const String _themeKey = 'selected_theme';
  late SharedPreferences _prefs;

  var currentTheme = AppThemes.lightMode.obs;
  var themeMode = ThemeMode.light.obs;
  var currentThemeName = 'light'.obs;

  @override
  void onInit() async {
    super.onInit();
    _prefs = await SharedPreferences.getInstance();
    _loadThemeFromPrefs();
  }

  Future<void> _saveThemeToPrefs(String themeName) async {
    await _prefs.setString(_themeKey, themeName);
    currentThemeName.value = themeName;
    log('Theme saved to prefs: $themeName');
  }

  void _loadThemeFromPrefs() {
    final savedThemeName = _prefs.getString(_themeKey) ?? 'light';
    currentThemeName.value = savedThemeName;
    switch (savedThemeName) {
      case 'light':
        setLightTheme();
        break;
      case 'dark':
        setDarkTheme();
        break;
      case 'purple':
        setPurpleTheme();
        break;
      case 'green':
        setGreenTheme();
        break;
      case 'orange':
        setOrangeTheme();
        break;
      case 'blue':
        setBlueTheme();
        break;
      case 'red':
        setRedTheme();
        break;
      case 'pink':
        setPinkTheme();
        break;
      case 'coral':
        setCoralTheme();
        break;
      case 'mint':
        setBlueTheme();
        break;
      case 'brown':
        setMintTheme();
        break;
      case 'turquoise':
        setTurquoiseTheme();
        break;
      case 'apricot':
        setApricotTheme();
        break;
      case 'plum':
        setPlumTheme();
        break;
      case 'magenta':
        setMagentaTheme();
        break;
      case 'lavender':
        setLavenderTheme();
        break;
      case 'peach':
        setPeachTheme();
        break;
      case 'system':
        setSystemTheme();
        break;
      default:
        setLightTheme();
    }
  }

  void setTheme(String themeName, ThemeData themeData) {
    currentTheme.value = themeData;
    themeMode.value = ThemeMode.light;
    _saveThemeToPrefs(themeName);

    Get.changeTheme(themeData);

    log('Theme changed to: $themeName');
  }

  void setLightTheme() {
    setTheme('light', AppThemes.lightMode);
    themeMode.value = ThemeMode.light;
  }

  void setDarkTheme() {
    setTheme('dark', AppThemes.darkMode);
    themeMode.value = ThemeMode.dark;
  }

  void setPurpleTheme() {
    setTheme('purple', AppThemes.purpleMode);
  }

  void setOrangeTheme() {
    setTheme('orange', AppThemes.orangeMode);
  }

  void setGreenTheme() {
    setTheme('green', AppThemes.greenMode);
  }

  void setBlueTheme() {
    setTheme('blue', AppThemes.blueMode);
  }

  void setBrownTheme() {
    setTheme('brown', AppThemes.brownMode);
  }

  void setApricotTheme() {
    setTheme('apricot', AppThemes.apricotMode);
  }

  void setCoralTheme() {
    setTheme('coral', AppThemes.coralMode);
  }

  void setLavenderTheme() {
    setTheme('lavender', AppThemes.lavenderMode);
  }

  void setMagentaTheme() {
    setTheme('magenta', AppThemes.magentaMode);
  }

  void setMintTheme() {
    setTheme('mint', AppThemes.mintMode);
  }

  void setPeachTheme() {
    setTheme('peach', AppThemes.peachMode);
  }

  void setPinkTheme() {
    setTheme('pink', AppThemes.pinkMode);
  }

  void setPlumTheme() {
    setTheme('plum', AppThemes.plumMode);
  }

  void setRedTheme() {
    setTheme('red', AppThemes.redMode);
  }

  void setTurquoiseTheme() {
    setTheme('turquoise', AppThemes.turquoiseMode);
  }

  void setSystemTheme() {
    themeMode.value = ThemeMode.system;
    _saveThemeToPrefs('system');

    Get.changeThemeMode(ThemeMode.system);

    log('System theme selected');
  }
}
