import 'package:flutter/material.dart';

class CounterBox extends StatelessWidget {
  String counter;

  CounterBox({required this.counter, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 112,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          counter,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w400),
        )),
      ),
    );
  }
}
