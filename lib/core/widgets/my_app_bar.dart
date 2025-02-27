import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget _child;
  final double? height;

  MyAppBar({super.key, required final String title, this.height}) : _child = _AppBar(title: title, height: height);

  MyAppBar.noBackBtn({super.key, required final String title, this.height})
    : _child = _NoBackButtonAppBar(title: title, height: height);

  @override
  Widget build(BuildContext context) {
    return _child;
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight + 18);
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final String title;

  const _AppBar({required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.04),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03, vertical: screenHeight * 0.015),
              child: Row(
                spacing: 10.0,
                children: [
                  Container(
                    height: screenHeight * 0.04,
                    width: screenHeight * 0.04,
                    decoration: const BoxDecoration(color: Color.fromARGB(47, 158, 158, 158), shape: BoxShape.circle),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.secondary),
                        onPressed: () => Get.back(),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),

                  Text(
                    title,
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight + 18);
}

class _NoBackButtonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final String title;
  const _NoBackButtonAppBar({required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight + 18);
}
