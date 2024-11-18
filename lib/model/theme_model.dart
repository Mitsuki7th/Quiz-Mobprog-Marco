import 'package:flutter/material.dart';

class ThemeModel with ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  static ThemeData themeA() {
    return ThemeData(
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.blue.shade50,
      buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
    );
  }

  static ThemeData themeB() {
    return ThemeData(
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.green.shade50,
      buttonTheme: const ButtonThemeData(buttonColor: Colors.green),
    );
  }

  static ThemeData themeC() {
    return ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.red.shade50,
      buttonTheme: const ButtonThemeData(buttonColor: Colors.red),
    );
  }
}
