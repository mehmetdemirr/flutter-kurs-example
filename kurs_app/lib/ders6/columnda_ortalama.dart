import 'package:flutter/material.dart';

class Ornek1 extends StatelessWidget {
  const Ornek1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ornek 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          )
        ],
      ),
    );
  }
}
