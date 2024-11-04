import 'package:flutter/material.dart';

class AppStyle {
  static const Color lightPrimaryColor = Color(0xffB7935F);
  static const Color lightOnPrimaryColor = Colors.white;
  static const Color lightOnSecColor = Colors.black;
  static const Color darkPrimaryColor = Color(0xff141A2E);
  static const Color darkOnPrimaryColor = Colors.white;
  static const Color darkOnSecColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    iconTheme: const IconThemeData(
      color: lightPrimaryColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: lightOnSecColor,
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryColor,
        unselectedIconTheme: IconThemeData(
          color: lightOnPrimaryColor,
          size: 35,
        ),
        selectedIconTheme: IconThemeData(
          color: lightOnSecColor,
          size: 35,
        ),
        selectedItemColor: lightOnSecColor,
        unselectedItemColor: lightOnPrimaryColor),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: lightPrimaryColor,
        secondary: lightPrimaryColor.withOpacity(0.57),
        onPrimary: lightOnPrimaryColor,
        onSecondary: lightOnSecColor),
    dividerTheme: const DividerThemeData(
      color: lightPrimaryColor,
      thickness: 2,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    iconTheme: const IconThemeData(
      color: darkPrimaryColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: darkOnSecColor,
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkPrimaryColor,
        unselectedIconTheme: IconThemeData(
          color: darkOnPrimaryColor,
          size: 35,
        ),
        selectedIconTheme: IconThemeData(
          color: darkOnSecColor,
          size: 35,
        ),
        selectedItemColor: darkOnSecColor,
        unselectedItemColor: darkOnPrimaryColor),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: darkPrimaryColor,
        secondary: darkPrimaryColor.withOpacity(0.57),
        onPrimary: darkOnPrimaryColor,
        onSecondary: darkOnSecColor),
    dividerTheme: const DividerThemeData(
      color: darkPrimaryColor,
      thickness: 2,
    ),
  );
}
