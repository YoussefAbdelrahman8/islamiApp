import 'package:flutter/material.dart';
import 'package:islamiapp/HomeScreen/Tabs/AhadethTab/AhadethTab.dart';
import 'package:islamiapp/HomeScreen/Tabs/QuraanTab/QuraanTab.dart';
import 'package:islamiapp/HomeScreen/Tabs/RadioTab/RadioTab.dart';
import 'package:islamiapp/HomeScreen/Tabs/SebhaTab/SebhaTab.dart';


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
     AhadethTab(),
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
            title: const Center(child: Text("Islami"))),
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
              label: "Radio",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/images/sebha_blue.png")),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(AssetImage("assets/images/Path 1.png")),
              label: "Ahadeth",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon:
                  const ImageIcon(AssetImage("assets/images/moshaf_gold.png")),
              label: "Quraan",
            )
          ],
        ),
      ),
    );
  }
}
