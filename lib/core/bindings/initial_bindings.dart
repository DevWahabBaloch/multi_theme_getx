import 'package:get/instance_manager.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/theme_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ThemesController(), permanent: true);
  }
}
