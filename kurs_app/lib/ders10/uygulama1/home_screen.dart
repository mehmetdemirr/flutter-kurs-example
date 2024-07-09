import 'package:flutter/material.dart';
import 'package:kurs_app/ders10/uygulama1/cached/shared_pref.dart';
import 'package:kurs_app/ders10/uygulama1/login_screen.dart';
import 'package:kurs_app/ders10/uygulama1/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await SharedPref().writeLogin(false).then((value) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                });
              },
              child: const Text("Çıkış Yap"),
            )
          ],
        ),
      ),
    );
  }
}
