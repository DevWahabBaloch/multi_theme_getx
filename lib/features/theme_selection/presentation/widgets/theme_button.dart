import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';

class ThemeButton extends StatelessWidget {
  final Color? bgColor;
  final VoidCallback? onPressed;
  final String themeName;

  const ThemeButton({super.key, required this.bgColor, this.onPressed, required this.themeName});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    final ThemesController controller = Get.find<ThemesController>();
    bool isSelected = controller.currentThemeName == themeName;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height * 0.09,
        width: width * 0.2,
        decoration: BoxDecoration(
          color: const Color.fromARGB(89, 158, 158, 158),
          borderRadius: BorderRadius.circular(10),
          border: isSelected ? Border.all(color: bgColor!, width: 2) : null,
        ),
        child: Center(
          child: Container(
            height: height * 0.07,
            width: height * 0.15,
            decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
