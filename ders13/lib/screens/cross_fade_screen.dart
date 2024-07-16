import 'package:flutter/material.dart';

class CrossFadeScreen extends StatefulWidget {
  const CrossFadeScreen({super.key});

  @override
  State<CrossFadeScreen> createState() => _CrossFadeScreenState();
}

class _CrossFadeScreenState extends State<CrossFadeScreen> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cross fade animation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  isFirst = !isFirst;
                });
              },
              child: AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.amber,
                  width: 200,
                  height: 200,
                ),
                secondChild: const Text("cross fade aniamtion"),
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
