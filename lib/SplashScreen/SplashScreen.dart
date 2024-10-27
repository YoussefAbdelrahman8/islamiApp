import 'package:flutter/material.dart';
import 'package:islamiapp/HomeScreen/HomeScreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg2.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SplashScreenView(
          navigateRoute: const HomeScreen(),
          duration: 3000,
          imageSrc: "assets/images/logo2.png",
          imageSize: 500,
          backgroundColor: Colors.transparent,
        ));
  }
}
