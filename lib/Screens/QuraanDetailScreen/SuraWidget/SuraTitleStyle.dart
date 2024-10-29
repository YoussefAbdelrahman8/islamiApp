import 'package:flutter/material.dart';

class SuraTitleStyle extends StatelessWidget {
  String suraName;

  SuraTitleStyle({required this.suraName, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Surat $suraName",
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Divider(),
        )
      ],
    );
  }
}
