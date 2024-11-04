import 'package:flutter/material.dart';

class TasbehButton extends StatelessWidget {
  void Function() tsbehfunction;
  String tsabehString;

  TasbehButton(
      {required this.tsbehfunction, required this.tsabehString, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        tsbehfunction();
      },
      style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          fixedSize: const Size(200, 51),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Theme.of(context).colorScheme.tertiary),
      child: Text(
        tsabehString,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.w400,color: Colors.black),
      ),
    );
  }
}
