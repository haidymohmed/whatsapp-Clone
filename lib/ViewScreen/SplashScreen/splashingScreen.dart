import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/ViewScreen/OnBoardingScreen/LandingScreen.dart';
class SplashingScreen extends StatefulWidget {
  static String id = "Splash";
  const SplashingScreen({Key? key}) : super(key: key);

  @override
  _SplashingScreenState createState() => _SplashingScreenState();
}

class _SplashingScreenState extends State<SplashingScreen> {
  static String id = "Splash";
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashTransition: SplashTransition.fadeTransition,
        splash: Image.asset(
            'images/whatsapp.jpg',
        ),
        nextScreen: LandingScreen(),
    );
  }
}
