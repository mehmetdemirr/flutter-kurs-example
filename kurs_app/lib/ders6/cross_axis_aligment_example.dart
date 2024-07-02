import 'package:flutter/material.dart';

class CrossAxisAligmentExapmle extends StatefulWidget {
  const CrossAxisAligmentExapmle({super.key});

  @override
  State<CrossAxisAligmentExapmle> createState() =>
      _CrossAxisAligmentExapmleState();
}

class _CrossAxisAligmentExapmleState extends State<CrossAxisAligmentExapmle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cross axis aligment deneme",
        ),
      ),
      body: Container(
        width: 300,
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.blueGrey,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
