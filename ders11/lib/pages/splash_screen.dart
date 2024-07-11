import 'package:ders11/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (_) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return const HomeScreen();
        }));
      },
    );
  }

  String lottieAsset = "assets/json/splash.json";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(lottieAsset),
          ],
        ),
      ),
    );
  }
}
