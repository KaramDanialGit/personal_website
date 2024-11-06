import 'package:flutter/material.dart';

enum ThemeModes { light, dark }

abstract class ThemeAttrs {
  ThemeModes get mode;
  String get name;
  IconData get icon;
  ThemeData get colors;
}

class LightTheme implements ThemeAttrs {
  @override
  ThemeModes get mode => ThemeModes.light;
  @override
  String get name => "Light Theme";
  @override
  IconData get icon => Icons.light_mode_outlined;
  @override
  ThemeData get colors => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light());
}

class DarkTheme implements ThemeAttrs {
  @override
  ThemeModes get mode => ThemeModes.dark;
  @override
  String get name => "Dark Theme";
  @override
  IconData get icon => Icons.dark_mode_outlined;
  @override
  ThemeData get colors => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark());
}

class ThemeProvider extends ChangeNotifier {
  ThemeAttrs _attrs = LightTheme();
  ThemeAttrs get attrs => _attrs;

  void toggleTheme() {
    bool isLight = attrs.mode == ThemeModes.light;
    _attrs = isLight ? DarkTheme() : LightTheme();
    notifyListeners();
  }
}
