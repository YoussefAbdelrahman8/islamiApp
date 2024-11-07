import 'package:flutter/material.dart';
import 'package:islamiapp/SharedPrefService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  Locale locale = const Locale("en");



  changeThemeMode(ThemeMode newThemeMode) {
    if (newThemeMode == themeMode) return;
    themeMode = newThemeMode;
    notifyListeners();

  }

  changeLocal(Locale newLocale) {
    if (newLocale == locale) return;
    locale = newLocale;
    notifyListeners();
  }





}
