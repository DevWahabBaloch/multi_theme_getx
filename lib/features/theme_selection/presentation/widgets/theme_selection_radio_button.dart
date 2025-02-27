import 'package:flutter/material.dart';

class ThemeSelectionRadioButton extends StatelessWidget {
  final String value;
  final String title;
  final String? selectedValue;
  final ValueChanged<String> onChanged;

  const ThemeSelectionRadioButton({
    super.key,
    required this.value,
    required this.title,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<String>(
            value: value,
            groupValue: selectedValue,
            onChanged: (newValue) {
              if (newValue != null) {
                onChanged(newValue);
              }
            },
          ),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
