import 'package:flutter/material.dart';

class PlayRow extends StatelessWidget {
  const PlayRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.skip_previous,
          size: 50,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        Icon(
          Icons.play_arrow,
          size: 70,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        Icon(
          Icons.skip_next,
          size: 50,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ],
    );
  }
}
