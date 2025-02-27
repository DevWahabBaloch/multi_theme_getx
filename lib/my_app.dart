import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_theme_getx/core/bindings/initial_bindings.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/pages/theme_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemesController themeController = Get.find<ThemesController>();
    return Obx(
      () => GetMaterialApp(
        theme: themeController.currentTheme.value,
        smartManagement: SmartManagement.full,
        initialBinding: InitialBindings(),
        debugShowCheckedModeBanner: false,
        home: const ThemeSelectionScreen(),
      ),
    );
  }
}
