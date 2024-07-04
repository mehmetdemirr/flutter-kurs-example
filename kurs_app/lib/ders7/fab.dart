import 'package:flutter/material.dart';

class FabExample extends StatefulWidget {
  const FabExample({super.key});

  @override
  State<FabExample> createState() => _FabExampleState();
}

class _FabExampleState extends State<FabExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fab example"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: const Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
        onPressed: () {
          print("tıklandı !");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
