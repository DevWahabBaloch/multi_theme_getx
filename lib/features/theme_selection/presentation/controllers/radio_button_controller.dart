import 'package:get/get.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';

class RadioButtonController extends GetxController {
  String? _themeType;
  String? get themeType => _themeType;
  final ThemesController _themesController = Get.find<ThemesController>();
  void setThemeType(String type) {
    _themeType = type;
    update();

    if (type == 'light') {
      _themesController.setLightTheme();
    } else if (type == 'dark') {
      _themesController.setDarkTheme();
    } else {
      _themesController.setSystemTheme();
    }
  }
}
