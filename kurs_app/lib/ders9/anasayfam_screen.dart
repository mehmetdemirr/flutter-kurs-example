import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnasayfamScreen extends StatefulWidget {
  const AnasayfamScreen({super.key});

  @override
  State<AnasayfamScreen> createState() => _AnasayfamScreenState();
}

class _AnasayfamScreenState extends State<AnasayfamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Anasayfam"),
            SizedBox(
              width: 300,
              height: 300,
              child: PageView(
                children: [
                  Container(
                    color: Colors.amber,
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 300,
                    height: 300,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
