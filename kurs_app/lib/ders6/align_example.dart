import 'package:flutter/material.dart';

class AlignExample extends StatefulWidget {
  const AlignExample({super.key});

  @override
  State<AlignExample> createState() => _AlignExampleState();
}

class _AlignExampleState extends State<AlignExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Example"),
      ),
      body: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
