import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';
import 'package:multi_theme_getx/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemesController());
  runApp(const MyApp());
}
