import 'package:flutter/material.dart';

class ThemeViewModel extends ChangeNotifier {
  //her ikisinide kullanabilirisiniz
  ThemeData theme = ThemeData.light();
  // bool theme1 = false;

  void changeTheme(bool value) {
    if (value) {
      theme = ThemeData.dark();
    } else {
      theme = ThemeData.light();
    }
    notifyListeners();
  }
}
