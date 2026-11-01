import 'package:flutter/material.dart';
import 'package:islami/core/AppColors.dart';
import 'package:islami/medules/Intro_Screen/Intro_Screen.dart';
import 'package:islami/medules/Layout/Screens/Layout_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return IntroScreen();
      },));
    },);
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                  child: Image.asset('assets/Images/ic_splash.png',)),
            ),
            Image.asset('assets/Images/img_branding.png',width: 244),

          ],
        ),
      ),
    );
  }
}
