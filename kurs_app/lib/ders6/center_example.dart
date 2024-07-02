import 'package:flutter/material.dart';

class CenterExample extends StatefulWidget {
  const CenterExample({super.key});

  @override
  State<CenterExample> createState() => _CenterExampleState();
}

class _CenterExampleState extends State<CenterExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Example"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
