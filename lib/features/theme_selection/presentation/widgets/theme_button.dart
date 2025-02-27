import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final Color? bgColor;
  final VoidCallback? onPressed;

  const ThemeButton({super.key, required this.bgColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height * 0.09,
        width: width * 0.2,
        decoration: BoxDecoration(color: const Color.fromARGB(89, 158, 158, 158), borderRadius: BorderRadius.circular(10)),
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
