import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:multi_theme_getx/core/widgets/my_app_bar.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/widgets/theme_button.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/widgets/theme_selection_dialog.dart';

class ThemeSelectionScreen extends GetView<ThemesController> {
  const ThemeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    final List<Color> themeColors = [Colors.blue, Colors.purple, Colors.green, Colors.orange];
    final List<VoidCallback> pressToChangeTheme = [
      controller.setBlueTheme,
      controller.setPurpleTheme,
      controller.setGreenTheme,
      controller.setOrangeTheme,
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: MyAppBar(title: 'Theme'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(204, 0, 0, 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                onTap: () {
                  showDialog(context: context, builder: (context) => ThemeSelectionDialog());
                },
                contentPadding: EdgeInsets.only(left: width * 0.04, bottom: height * 0.001, right: width * 0.03),
                title: const Text('Background', style: TextStyle(color: Colors.white)),
                subtitle: const Text('Auto (Light + Dark)', style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
              ),
            ),
            Card(
              color: const Color.fromARGB(204, 0, 0, 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(left: width * 0.04, bottom: height * 0.001),
                    title: const Text('Themes', style: TextStyle(color: Colors.white)),
                    subtitle: const Text(
                      'Customize the look and style of the app with\nunique color themes',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right, color: Colors.white)),
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.surface,
                    thickness: 1,
                    height: 20,
                    indent: width * 0.05,
                    endIndent: width * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.02),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return ThemeButton(onPressed: pressToChangeTheme[index], bgColor: themeColors[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
