import 'package:flutter/material.dart';

class HadethTitleStyle extends StatelessWidget {
  String hadethName;

  HadethTitleStyle({required this.hadethName, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(hadethName,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 25,
                )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Divider(),
        )
      ],
    );
  }
}
