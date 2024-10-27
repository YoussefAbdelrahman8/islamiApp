import 'package:flutter/material.dart';
import 'package:islamiapp/HomeScreen.dart';
import 'package:islamiapp/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xffB7935F),
            unselectedIconTheme: IconThemeData(
              color: Colors.white,
              size: 35,
            ),
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              size: 35,
            ),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: const Color(0xffB7935F),
            secondary: const Color(0xffB7935F).withOpacity(0.57),
            onPrimary: Colors.white,
            onSecondary: Colors.black),
      ),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
