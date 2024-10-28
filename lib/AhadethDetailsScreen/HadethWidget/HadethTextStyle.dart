import 'package:flutter/material.dart';

class HadethTextStyle extends StatelessWidget {
  String content;

  HadethTextStyle({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        textAlign: TextAlign.right,
        content,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
