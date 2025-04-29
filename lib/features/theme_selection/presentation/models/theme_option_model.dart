import 'dart:ui';

class ThemeOptionModel {
  final Color color;
  final VoidCallback onSelect;
  final String name;

  ThemeOptionModel({required this.color, required this.name, required this.onSelect});
}
