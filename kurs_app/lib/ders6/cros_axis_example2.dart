import 'package:flutter/material.dart';

class CrossAxisExample2 extends StatefulWidget {
  const CrossAxisExample2({super.key});

  @override
  State<CrossAxisExample2> createState() => _CrossAxisExample2State();
}

class _CrossAxisExample2State extends State<CrossAxisExample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cross Axis  Aligment Örnek"),
      ),
      body: Container(
        height: 500,
        width: 500,
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
