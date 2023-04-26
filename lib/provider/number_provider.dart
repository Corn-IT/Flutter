import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  int number = 1;

  void down() {
    number--;
    notifyListeners();
  }

  void up() {
    number++;
    notifyListeners();
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/category.json');
    final data = await json.decode(response);
    return data;
  }
}
