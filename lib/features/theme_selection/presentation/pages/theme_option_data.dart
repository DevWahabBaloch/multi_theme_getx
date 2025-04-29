import 'package:flutter/material.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/models/theme_option_model.dart';

List<ThemeOptionModel> getThemes(ThemesController controller) => [
  ThemeOptionModel(color: Colors.blue, onSelect: controller.setBlueTheme, name: 'blue'),
  ThemeOptionModel(color: Colors.purple, onSelect: controller.setPurpleTheme, name: 'purple'),
  ThemeOptionModel(color: Colors.green, onSelect: controller.setGreenTheme, name: 'green'),
  ThemeOptionModel(color: Colors.orange, onSelect: controller.setOrangeTheme, name: 'orange'),
  ThemeOptionModel(color: Colors.brown, onSelect: controller.setBrownTheme, name: 'brown'),
  ThemeOptionModel(color: Colors.pink, onSelect: controller.setPinkTheme, name: 'pink'),
  ThemeOptionModel(color: Colors.red, onSelect: controller.setRedTheme, name: 'red'),
  ThemeOptionModel(color: const Color(0xFFFFD1A4), onSelect: controller.setApricotTheme, name: 'apricot'),
  ThemeOptionModel(color: const Color(0xFFFF6F61), onSelect: controller.setCoralTheme, name: 'coral'),
  ThemeOptionModel(color: const Color.fromARGB(200, 209, 196, 233), onSelect: controller.setLavenderTheme, name: 'lavender'),
  ThemeOptionModel(color: const Color.fromARGB(66, 255, 0, 255), onSelect: controller.setMagentaTheme, name: 'magenta'),
  ThemeOptionModel(color: const Color(0xFF98FF98), onSelect: controller.setMintTheme, name: 'mint'),
  ThemeOptionModel(color: const Color(0xFFFFE5B4), onSelect: controller.setPeachTheme, name: 'peach'),
  ThemeOptionModel(color: const Color(0xFF8E4585), onSelect: controller.setPlumTheme, name: 'plum'),
];
