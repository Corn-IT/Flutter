import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  String themeText = 'Light Theme';
  ThemeMode changeTheme = ThemeMode.light;

  void changeThemeText(value) {
    themeText = value ? 'Light Theme' : 'Dark Theme';
    changeTheme = value ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
