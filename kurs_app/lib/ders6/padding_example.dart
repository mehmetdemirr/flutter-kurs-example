import 'package:flutter/material.dart';

class PaddingExample extends StatefulWidget {
  const PaddingExample({super.key});

  @override
  State<PaddingExample> createState() => _PaddingExampleState();
}

class _PaddingExampleState extends State<PaddingExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Center Example"),
        ),
        body: const Padding(
          // padding: EdgeInsets.only(top: 50.0, left: 20),
          padding: EdgeInsets.all(20),
          child: Text("Deneme Text"),
        )
        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Container(
        //     // margin: const EdgeInsets.all(20),
        //     color: Colors.red,
        //     width: 100,
        //     height: 100,
        //   ),
        // ),
        );
  }
}
