import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  int counter = 0;

  void sayiArttir() {
    counter++;
    notifyListeners();
  }

  void sayiAzalt() {
    counter--;
    notifyListeners();
  }
}
