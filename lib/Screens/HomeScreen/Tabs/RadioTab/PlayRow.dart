import 'package:flutter/material.dart';

class PlayRow extends StatelessWidget {
  const PlayRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.skip_previous,
          size: 50,
        ),
        Icon(
          Icons.play_arrow,
          size: 70,
        ),
        Icon(
          Icons.skip_next,
          size: 50,
        ),
      ],
    );
  }
}
