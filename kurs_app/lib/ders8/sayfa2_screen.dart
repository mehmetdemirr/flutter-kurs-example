import 'package:flutter/material.dart';

class Sayfa2Screen extends StatefulWidget {
  const Sayfa2Screen({super.key});

  @override
  State<Sayfa2Screen> createState() => _Sayfa2ScreenState();
}

class _Sayfa2ScreenState extends State<Sayfa2Screen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("geri tuşuna bastı kullanıcı ");
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text("Sayfa 2"),
        ),
        body: const Column(
          children: [
            Text("Sayfa 2 ye hoş geldin "),
          ],
        ),
      ),
    );
  }
}
