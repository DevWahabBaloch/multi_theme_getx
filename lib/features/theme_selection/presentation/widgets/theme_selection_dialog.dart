import 'package:flutter/material.dart';

class ThemeSelectionDialog extends StatelessWidget {
  const ThemeSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xff2a292f),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Background', style: TextStyle(fontSize: 30.0, color: Colors.white)),
          Text(
            'Automatic modes are compatible with\nthe power saving mode and dark mode.\nAvailability depends the on device',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
