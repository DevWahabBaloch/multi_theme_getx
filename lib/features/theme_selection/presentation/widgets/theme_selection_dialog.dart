import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/controllers/radio_button_controller.dart';
import 'package:multi_theme_getx/features/theme_selection/presentation/widgets/theme_selection_radio_button.dart';

class ThemeSelectionDialog extends StatefulWidget {
  const ThemeSelectionDialog({super.key});

  @override
  ThemeSelectionDialogState createState() => ThemeSelectionDialogState();
}

class ThemeSelectionDialogState extends State<ThemeSelectionDialog> {
  String? _tempSelectedTheme;

  @override
  void initState() {
    super.initState();
    _tempSelectedTheme = Get.find<RadioButtonController>().themeType;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Dialog(
      backgroundColor: Color(0xff2a292f),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: width * 0.8,
        height: height * 0.45,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Background', style: TextStyle(fontSize: 30.0, color: Colors.white)),
              SizedBox(height: 10),
              Text(
                'Automatic modes are compatible with\nthe power saving mode and dark mode.\nAvailability depends on the device',
                style: TextStyle(color: Colors.white),
              ),
              ThemeSelectionRadioButton(
                value: 'light',
                title: 'Light Mode',
                selectedValue: _tempSelectedTheme,
                onChanged: (value) => setState(() => _tempSelectedTheme = value),
              ),
              ThemeSelectionRadioButton(
                value: 'dark',
                title: 'Dark Mode',
                selectedValue: _tempSelectedTheme,
                onChanged: (value) => setState(() => _tempSelectedTheme = value),
              ),
              ThemeSelectionRadioButton(
                value: 'system',
                title: 'System',
                selectedValue: _tempSelectedTheme,
                onChanged: (value) => setState(() => _tempSelectedTheme = value),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Cancel', style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_tempSelectedTheme != null) {
                        Get.find<RadioButtonController>().setThemeType(_tempSelectedTheme!);
                      }
                      Get.back();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    ),
                    child: Text('OK', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
