import 'package:flutter/material.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SebhaTab/BottomPartWidget/CounterBox.dart';
import 'package:islamiapp/Screens/HomeScreen/Tabs/SebhaTab/BottomPartWidget/TasbehButton.dart';

class BottomPartwidget extends StatelessWidget {
  int counter;
  void Function() tsbehfunc;
  String tsabehString;

  BottomPartwidget(
      {required this.counter,
      required this.tsbehfunc,
      required this.tsabehString,
      super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        children: [
          const Text(
            "Tasbeh Count",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 0.02 * height,
          ),
          CounterBox(
            counter: counter.toString(),
          ),
          SizedBox(height: 0.02 * height),
          TasbehButton(
            tsbehfunction: tsbehfunc,
            tsabehString: tsabehString,
          ),
        ],
      ),
    );
  }
}
