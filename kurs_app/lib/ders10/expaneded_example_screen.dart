import 'package:flutter/material.dart';

class ExpandedExampleScreen extends StatefulWidget {
  const ExpandedExampleScreen({super.key});

  @override
  State<ExpandedExampleScreen> createState() => _ExpandedExampleScreenState();
}

class _ExpandedExampleScreenState extends State<ExpandedExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Example"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              height: 100,
              width: 10,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
