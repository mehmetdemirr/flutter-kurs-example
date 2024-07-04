import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GestureExample extends StatefulWidget {
  const GestureExample({super.key});

  @override
  State<GestureExample> createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print("bir kez bastın");
              },
              onLongPress: () {
                print("uzun bastı");
              },
              onDoubleTap: () {
                print("çift tıkladın ");
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("metine tıkladınız");
              },
              child: const Text("bu texte basabiliriz"),
            )
          ],
        ),
      ),
    );
  }
}
