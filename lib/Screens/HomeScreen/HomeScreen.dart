import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/AhadethTab/AhadethTab.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/QuraanTab/QuraanTab.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/RadioTab/RadioTab.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SebhaTab/SebhaTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    const RadioTab(),
    const SebhaTab(),
    const AhadethTab(),
    QuraanTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg3.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
            title: Center(child: Text(AppLocalizations.of(context)!.islami))),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
            print(value);
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/images/radio_blue.png")),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/images/sebha_blue.png")),
              label: AppLocalizations.of(context)!.tasbeh,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/images/Path 1.png")),
              label: AppLocalizations.of(context)!.ahadeth,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon:
                  const ImageIcon(AssetImage("assets/images/moshaf_gold.png")),
              label: AppLocalizations.of(context)!.quraan,
            )
          ],
        ),
      ),
    );
  }
}
