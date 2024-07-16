import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: _selected ? Colors.blue : Colors.red,
                  width: _selected ? 100 : 200,
                  height: _selected ? 100 : 200,
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  color: _selected ? Colors.blue : Colors.red,
                  width: _selected ? 100 : 200,
                  height: _selected ? 100 : 200,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // if (_selected == true) {
                //   _selected = false;
                // } else {
                //   _selected = true;
                // }
                _selected = !_selected;
              });
            },
            child: const Text("Tıkla"),
          ),
        ],
      ),
    );
  }
}
