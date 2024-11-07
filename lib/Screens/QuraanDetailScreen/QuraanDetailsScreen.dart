import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/DataClasses/Sura.dart';
import 'package:islamiapp/Providers/SettingsProvider.dart';
import 'package:islamiapp/Screens/QuraanDetailScreen/SuraWidget/SuraWidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class QuraanDetailsScreen extends StatefulWidget {
  static const routeName = "quraanDetail";

  const QuraanDetailsScreen({super.key});

  @override
  State<QuraanDetailsScreen> createState() => _QuraanDetailsState();
}

class _QuraanDetailsState extends State<QuraanDetailsScreen> {
  late Sura sura;

  @override
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    sura = ModalRoute.of(context)?.settings.arguments as Sura;
    sura.suraContent == "" ? loadContent(sura.suraIndex + 1) : print("loaded");

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
            title: Center(
              child: Text(AppLocalizations.of(context)!.islami),
            ),
          ),
          body: SuraWidget(sura: sura)),
    );
  }

  loadContent(int index) async {
    String content = await rootBundle.loadString("assets/files/$index.txt");

    setState(() {
      sura.suraContent = content;
    });
  }
}
