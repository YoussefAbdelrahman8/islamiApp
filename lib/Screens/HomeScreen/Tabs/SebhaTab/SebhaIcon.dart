import 'package:flutter/material.dart';

class SebhaIcon extends StatelessWidget {
 double angle;
   SebhaIcon({required this.angle,super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0.09 * width),
            child: Image.asset(
              "assets/images/head of seb7a.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.04 * height),
            child: Transform.rotate(
              angle: angle,
              child: Image.asset("assets/images/body of seb7a.png"),
            ),
          ),
        ],
      ),
    );
  }
}
