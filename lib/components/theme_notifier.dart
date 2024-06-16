import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;
  bool get isDark => _isDarkMode;

  late SharedPreferences storage;

  final darkTheme = ThemeData(
    primaryColor: Colors.black12,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black12,
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    primaryColorDark: Colors.white,
  );

  changeTheme() {
    _isDarkMode = !isDark;
    storage.setBool("isDark", _isDarkMode);
    notifyListeners();
  }

  init()async {
    storage = await SharedPreferences.getInstance();
    _isDarkMode = storage.getBool("isDark")??false;
    notifyListeners();
  }
}