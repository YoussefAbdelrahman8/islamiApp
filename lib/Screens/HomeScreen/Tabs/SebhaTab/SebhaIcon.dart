import 'package:flutter/material.dart';
import 'package:islamiapp/AppStyle/AppStyle.dart';

class SebhaIcon extends StatelessWidget {
  double angle;

  SebhaIcon({required this.angle, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: (AppStyle.isDark ? 0.13 : 0.09) * width),
            child: Image.asset(
              AppStyle.isDark
                  ? "assets/images/dark head of seb7a.png"
                  : "assets/images/head of seb7a.png",
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: (AppStyle.isDark ? 0.08 : 0.04) * height),
            child: Transform.rotate(
              angle: angle,
              child: Image.asset(AppStyle.isDark
                  ? "assets/images/dark body of seb7a.png"
                  : "assets/images/body of seb7a.png"),
            ),
          ),
        ],
      ),
    );
  }
}
