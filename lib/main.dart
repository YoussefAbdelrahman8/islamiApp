import 'package:flutter/material.dart';
import 'package:islamiapp/Screens/AhadethDetailsScreen/AhadethDetailsScreen.dart';
import 'package:islamiapp/Screens/HomeScreen/HomeScreen.dart';
import 'package:islamiapp/Screens/QuraanDetailScreen/QuraanDetailsScreen.dart';
import 'package:islamiapp/Screens/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Color(0xffB7935F),
        ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          scaffoldBackgroundColor: Colors.transparent,
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
          dividerTheme: const DividerThemeData(
            color: Color(0xffB7935F),
            thickness: 2,
          )),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        QuraanDetailsScreen.routeName: (context) => const QuraanDetailsScreen(),
        AhadethDetailsScreen.routeName: (context) =>
            const AhadethDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
