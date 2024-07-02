import 'package:flutter/material.dart';

class CrossAxisExample extends StatefulWidget {
  const CrossAxisExample({super.key});

  @override
  State<CrossAxisExample> createState() => _CrossAxisExampleState();
}

class _CrossAxisExampleState extends State<CrossAxisExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cross Axis  Aligment Örnek"),
      ),
      body: Container(
        height: 300,
        color: Colors.black12,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
