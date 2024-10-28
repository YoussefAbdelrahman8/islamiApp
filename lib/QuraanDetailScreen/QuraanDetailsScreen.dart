
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/DataClasses/Sura.dart';
import 'package:islamiapp/QuraanDetailScreen/SuraWidget/SuraWidget.dart';

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
    sura = ModalRoute.of(context)?.settings.arguments as Sura;
    sura.suraContent == "" ? loadContent(sura.suraIndex + 1) : print("loaded");

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
