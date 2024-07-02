import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfam"),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.amber,
                margin: const EdgeInsets.all(20),
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(20),
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.brown,
                margin: const EdgeInsets.all(20),
                height: 100,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
