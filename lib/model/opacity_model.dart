import 'package:flutter/material.dart';

class OpacityModel with ChangeNotifier {
  double _opacity = 1.0; // Default opacity 100%

  double get opacity => _opacity;

  void setOpacity(double value) {
    _opacity = value;
    notifyListeners();
  }
}