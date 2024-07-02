import 'package:flutter/material.dart';

class MainAxisSizeScreen extends StatefulWidget {
  const MainAxisSizeScreen({super.key});

  @override
  State<MainAxisSizeScreen> createState() => _MainAxisSizeScreenState();
}

class _MainAxisSizeScreenState extends State<MainAxisSizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Axis Size"),
      ),
      body: Container(
        height: 300,
        color: Colors.black12,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
