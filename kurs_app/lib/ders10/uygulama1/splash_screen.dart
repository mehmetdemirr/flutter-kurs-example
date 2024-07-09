import 'package:flutter/material.dart';
import 'package:kurs_app/ders10/image_extension_example.dart';
import 'package:kurs_app/ders10/uygulama1/cached/shared_pref.dart';
import 'package:kurs_app/ders10/uygulama1/home_screen.dart';
import 'package:kurs_app/ders10/uygulama1/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
    ).then((_) async {
      bool girisYapildiMi = await SharedPref().readLogin();
      print("giriş yapıldı mı : $girisYapildiMi");
      if (girisYapildiMi) {
        //giriş yapılmış home gönder
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );
      } else {
        //giriş yapılmamış logine gönder
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginScreen();
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageItem.flutterLogo.str(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Uygulama Adı",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
