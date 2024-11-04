import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamiapp/AppStyle/AppStyle.dart';
import 'package:islamiapp/Screens/AhadethDetailsScreen/AhadethDetailsScreen.dart';
import 'package:islamiapp/Screens/HomeScreen/HomeScreen.dart';
import 'package:islamiapp/Screens/QuraanDetailScreen/QuraanDetailsScreen.dart';
import 'package:islamiapp/Screens/SplashScreen/SplashScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: const Locale("ar"),
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: ThemeMode.dark,
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
