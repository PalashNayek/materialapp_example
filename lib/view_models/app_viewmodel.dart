import 'package:flutter/material.dart';

class AppViewModel extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  String _appTitle = "My Flutter App";

  ThemeData get themeData => _themeData;
  String get appTitle => _appTitle;

  void toggleTheme() {
    if (_themeData == ThemeData.light()) {
      _themeData = ThemeData.dark();
    } else {
      _themeData = ThemeData.light();
    }
    notifyListeners();  // Notify listeners to rebuild UI with new theme
  }

  void setAppTitle(String title) {
    _appTitle = title;
    notifyListeners();
  }
}
