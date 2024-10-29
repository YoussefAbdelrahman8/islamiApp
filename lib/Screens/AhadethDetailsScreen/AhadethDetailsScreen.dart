import 'package:flutter/material.dart';
import 'package:islamiapp/Screens/AhadethDetailsScreen/HadethWidget/HadethWidget.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const routeName = "ahadethDetail";

  const AhadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Islami")),
        ),
        body: const HadethWidget(),
      ),
    );
  }
}
