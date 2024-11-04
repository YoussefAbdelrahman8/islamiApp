import 'package:flutter/material.dart';
import 'package:islamiapp/AppStyle/AppStyle.dart';
import 'package:islamiapp/Screens/HomeScreen/HomeScreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppStyle.isDark
                  ? "assets/images/dark bg.png"
                  : "assets/images/bg2.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SplashScreenView(
          navigateRoute: const HomeScreen(),
          duration: 3000,
          imageSrc: AppStyle.isDark
              ? "assets/images/dark logo.png"
              : "assets/images/logo2.png",
          imageSize: 500,
          backgroundColor: Colors.transparent,
        ));
  }
}
