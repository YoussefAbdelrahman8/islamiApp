import 'package:flutter/material.dart';
import 'package:islamiapp/AppStyle/AppStyle.dart';
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
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: ThemeMode.system,
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
