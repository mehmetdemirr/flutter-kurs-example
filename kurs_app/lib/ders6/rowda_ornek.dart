import 'package:flutter/material.dart';

class Ornek2 extends StatefulWidget {
  const Ornek2({super.key});

  @override
  State<Ornek2> createState() => _Ornek2State();
}

class _Ornek2State extends State<Ornek2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Örnek 2"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }
}
