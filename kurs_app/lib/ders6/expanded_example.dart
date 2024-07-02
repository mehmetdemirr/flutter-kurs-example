import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedExample extends StatefulWidget {
  const ExpandedExample({super.key});

  @override
  State<ExpandedExample> createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Example"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
