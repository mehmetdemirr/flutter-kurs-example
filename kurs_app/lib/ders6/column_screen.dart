import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column da hizalama"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.amber,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}
