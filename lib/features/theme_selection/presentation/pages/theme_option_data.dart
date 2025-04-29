import 'package:flutter/material.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/models/theme_option_model.dart';

List<ThemeOptionModel> getThemes(ThemesController controller) => [
  ThemeOptionModel(color: Colors.blue, onSelect: controller.setBlueTheme),
  ThemeOptionModel(color: Colors.purple, onSelect: controller.setPurpleTheme),
  ThemeOptionModel(color: Colors.green, onSelect: controller.setGreenTheme),
  ThemeOptionModel(color: Colors.orange, onSelect: controller.setOrangeTheme),
  ThemeOptionModel(color: Colors.brown, onSelect: controller.setBrownTheme),
  ThemeOptionModel(color: Colors.pink, onSelect: controller.setPinkTheme),
  ThemeOptionModel(color: Colors.red, onSelect: controller.setRedTheme),
  ThemeOptionModel(color: const Color(0xFFFFD1A4), onSelect: controller.setApricotTheme),
  ThemeOptionModel(color: const Color(0xFFFF6F61), onSelect: controller.setCoralTheme),
  ThemeOptionModel(color: const Color.fromARGB(200, 209, 196, 233), onSelect: controller.setLavenderTheme),
  ThemeOptionModel(color: const Color.fromARGB(66, 255, 0, 255), onSelect: controller.setMagentaTheme),
  ThemeOptionModel(color: const Color(0xFF98FF98), onSelect: controller.setMintTheme),
  ThemeOptionModel(color: const Color(0xFFFFE5B4), onSelect: controller.setPeachTheme),
  ThemeOptionModel(color: const Color(0xFF8E4585), onSelect: controller.setPlumTheme),
];
