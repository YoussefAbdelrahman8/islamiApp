import 'package:flutter/material.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SebhaTab/BottomPartWidget/BottomPartwidget.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SebhaTab/SebhaIcon.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbehStrings = [
    "Subhan Allah",
    "Al-Hamdulle",
    "Allah Akbar",
    "Astghforullah"
  ];
  int i = 0;
  int counter = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: 0.1 * height),
        SebhaIcon(angle: angle),
        const Divider(
          thickness: 0,
          color: Colors.transparent,
        ),
        BottomPartwidget(
          counter: counter,
          tsbehfunc: tsbehFunc,
          tsabehString: tasbehStrings[i],
        ),
      ],
    );
  }

  tsbehFunc() {
    if (counter != 30) {
      setState(() {
        angle = 0.21 * counter;
        counter++;
      });
    } else {
      setState(() {
        i == 3 ? i = 0 : i++;
        counter = 0;
      });
    }
  }
}
