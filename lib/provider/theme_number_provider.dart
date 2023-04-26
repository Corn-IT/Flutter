import 'package:flutter/material.dart';

class ThemeNumberProvider extends ChangeNotifier {
  int number = 0;

  void upNumber() {
    number++;
    notifyListeners();
  }
}
