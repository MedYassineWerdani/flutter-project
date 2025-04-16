import 'package:flutter/material.dart';

class CompteurProvider with ChangeNotifier {
  int _cpt = 0;

  int get cpt => _cpt;

  void incrementer() {
    _cpt++;
    notifyListeners(); //! Very Important
  }

  void decrementer() {
    _cpt--;
    notifyListeners();
  }
}
