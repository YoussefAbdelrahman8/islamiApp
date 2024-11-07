import 'package:flutter/material.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/Screens/AhadethDetailsScreen/HadethWidget/HadethWidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const routeName = "ahadethDetail";

  const AhadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.themeMode == ThemeMode.dark
              ? "assets/images/home_dark_background.png"
              : "assets/images/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(AppLocalizations.of(context)!.islami)),
        ),
        body: const HadethWidget(),
      ),
    );
  }
}
