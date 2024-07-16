import 'package:flutter/material.dart';

class OpacityExampleScreen extends StatefulWidget {
  const OpacityExampleScreen({super.key});

  @override
  State<OpacityExampleScreen> createState() => _OpacityExampleScreenState();
}

class _OpacityExampleScreenState extends State<OpacityExampleScreen> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Opacity(
                  opacity: _opacity,
                  child: Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                  ),
                ),
                AnimatedOpacity(
                  //0.0 - 1.0 arasında değer alır
                  opacity: _opacity,
                  duration: const Duration(seconds: 3),
                  curve: Curves.bounceInOut,
                  child: Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _opacity = _opacity == 1.0 ? 0.0 : 1.0;
              setState(() {});
            },
            child: const Text("Tıkla"),
          ),
        ],
      ),
    );
  }
}
