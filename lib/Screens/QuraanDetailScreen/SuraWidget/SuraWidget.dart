import 'package:flutter/material.dart';
import 'package:islamiapp/DataClasses/Sura.dart';
import 'package:islamiapp/Screens/QuraanDetailScreen/SuraWidget/SuraTextStyle.dart';
import 'package:islamiapp/Screens/QuraanDetailScreen/SuraWidget/SuraTitleStyle.dart';

class SuraWidget extends StatelessWidget {
  Sura sura;

  SuraWidget({required this.sura, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: 0.9 * height,
        width: 0.95 * width,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              SuraTitleStyle(suraName: sura.suraName),
              Expanded(
                child: sura.suraContent == ""
                    ? const Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(child: SuraTextStyle(content: sura.suraContent)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
