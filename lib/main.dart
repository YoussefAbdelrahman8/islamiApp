import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamiapp/AppStyle/AppStyle.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/Screens/AhadethDetailsScreen/AhadethDetailsScreen.dart';
import 'package:islamiapp/Screens/HomeScreen/HomeScreen.dart';
import 'package:islamiapp/Screens/QuraanDetailScreen/QuraanDetailsScreen.dart';
import 'package:islamiapp/Screens/SplashScreen/SplashScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
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
      locale: settingsProvider.locale,
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: settingsProvider.themeMode,
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
