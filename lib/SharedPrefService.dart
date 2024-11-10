// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class SharedPrefService {
//   static const String themeKey = "theme";
//   static const String localeKey = "locale";
//
//   static Future<void> saveTheme(String theme) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(themeKey, theme);
//   }
//
//   static Future<String?> getTheme() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString(themeKey);
//   }
//
//   static Future<void> saveLocale(String locale) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(localeKey, locale);
//   }
//
//   static Future<String?> getLocale() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString(localeKey);
//   }
// }
