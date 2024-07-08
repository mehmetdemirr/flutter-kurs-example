import 'package:flutter/material.dart';
import 'package:kurs_app/ders8/sayfa2_screen.dart';

class Sayfa1Screen extends StatefulWidget {
  const Sayfa1Screen({super.key});

  @override
  State<Sayfa1Screen> createState() => _Sayfa1ScreenState();
}

class _Sayfa1ScreenState extends State<Sayfa1Screen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("kullanıcı geri tuşuna bastı");
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sayfa 1",
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Sayfa2Screen();
                    },
                  ),
                );
              },
              child: const Text("ikinci sayfaya git"),
            )
          ],
        ),
      ),
    );
  }
}
