import 'package:get/get.dart';

class RadioButtonController extends GetxController {
  String _themeType = 'light_mode';
  String get themeType => _themeType;
  void setThemeType(String type) {
    _themeType = type;
    update();
  }
}
