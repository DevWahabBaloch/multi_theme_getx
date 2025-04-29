import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:multi_theme_getx/core/widgets/my_app_bar.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/models/theme_option.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/widgets/theme_button.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/widgets/theme_selection_dialog.dart';

class ThemeSelectionScreen extends GetView<ThemesController> {
  const ThemeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    final List<ThemeOption> themes = [
      ThemeOption(color: Colors.blue, onSelect: controller.setBlueTheme),
      ThemeOption(color: Colors.purple, onSelect: controller.setPurpleTheme),
      ThemeOption(color: Colors.green, onSelect: controller.setGreenTheme),
      ThemeOption(color: Colors.orange, onSelect: controller.setOrangeTheme),
      ThemeOption(color: Colors.brown, onSelect: controller.setBrownTheme),
      ThemeOption(color: Colors.pink, onSelect: controller.setPinkTheme),
      ThemeOption(color: Colors.red, onSelect: controller.setRedTheme),

      ThemeOption(color: Color(0xFFFFD1A4), onSelect: controller.setApricotTheme), // Apricot
      ThemeOption(color: Color(0xFFFF6F61), onSelect: controller.setCoralTheme), // Coral
      ThemeOption(color: Color.fromARGB(200, 209, 196, 233), onSelect: controller.setLavenderTheme), // Lavender
      ThemeOption(color: Color.fromARGB(66, 255, 0, 255), onSelect: controller.setMagentaTheme), // Magenta
      ThemeOption(color: Color(0xFF98FF98), onSelect: controller.setMintTheme), // Mint
      ThemeOption(color: Color(0xFFFFE5B4), onSelect: controller.setPeachTheme), // Peach
      ThemeOption(color: Color(0xFF8E4585), onSelect: controller.setPlumTheme), // Plum
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: MyAppBar(title: 'Theme'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(64, 0, 0, 0),
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
              color: const Color.fromARGB(64, 0, 0, 0),
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
                      itemCount: themes.length,
                      itemBuilder: (context, index) {
                        return ThemeButton(onPressed: themes[index].onSelect, bgColor: themes[index].color);
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
