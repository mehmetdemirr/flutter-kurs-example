import 'package:flutter/material.dart';

class ScrollViewScreen extends StatefulWidget {
  const ScrollViewScreen({super.key});

  @override
  State<ScrollViewScreen> createState() => _ScrollViewScreenState();
}

class _ScrollViewScreenState extends State<ScrollViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const InkWell(child: Icon(Icons.menu_book)),
        title: const Text("Scroll View Example"),
        actions: [
          IconButton(
            onPressed: () {
              print("Arama ikonuna bastın");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("3 nokta ikonuna bastın");
            },
            icon: const Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 300,
            ),
            Container(
              color: Colors.yellow,
              height: 300,
            ),
            Container(
              color: Colors.pink,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
