import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontModel with ChangeNotifier {
  TextStyle _currentFont = GoogleFonts.cinzel();

  TextStyle get currentFont => _currentFont;

  void setFont(TextStyle font) {
    _currentFont = font;
    notifyListeners();
  }

  static TextStyle fontA() {
    return GoogleFonts.cinzel(); // Elegan dan klasik
  }

  static TextStyle fontB() {
    return GoogleFonts.permanentMarker(); // Tebal dan mencolok
  }

  static TextStyle fontC() {
    return GoogleFonts.pacifico(); // Kursif dan santai
  }
}
