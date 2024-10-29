import 'package:flutter/material.dart';

class CounterBox extends StatelessWidget {
  String counter;
   CounterBox({required this.counter,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 69,
      height: 81,
      child: Card(
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          counter,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        )),
      ),
    );
  }
}
