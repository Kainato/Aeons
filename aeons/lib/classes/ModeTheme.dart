import 'package:flutter/material.dart';

class ModeTheme extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  widgetTheme(
    BuildContext context, {
    required dynamic lightTheme,
    required dynamic darkTheme,
  }) {
    return Theme.of(context).brightness == Brightness.dark
        ? darkTheme
        : lightTheme;
  }
}
