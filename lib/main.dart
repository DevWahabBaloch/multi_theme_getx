import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/radio_button_controller.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';
import 'package:multi_theme_getx/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemesController());
  Get.put(RadioButtonController());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}
