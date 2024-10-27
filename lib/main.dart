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
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
