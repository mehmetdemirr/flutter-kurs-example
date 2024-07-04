import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool acikMi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Örnek"),
      ),
      body: Column(
        children: [
          Switch.adaptive(
            activeColor: Colors.deepPurple,
            value: acikMi,
            onChanged: (value) {
              setState(() {
                acikMi = value;
                print("Durum : $acikMi");
              });
            },
          ),
        ],
      ),
    );
  }
}
