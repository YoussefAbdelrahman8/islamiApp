import 'package:flutter/material.dart';

class TasbehButton extends StatelessWidget {
  void Function() tsbehfunction;
  String tsabehString;
   TasbehButton({required this.tsbehfunction,required this.tsabehString,super.key});

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
          backgroundColor: Theme.of(context).colorScheme.primary),
      child: Text(
        tsabehString,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 25,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
