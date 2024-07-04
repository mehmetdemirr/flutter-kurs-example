import 'package:flutter/material.dart';

class InkWellExample extends StatefulWidget {
  const InkWellExample({super.key});

  @override
  State<InkWellExample> createState() => _InkWellExampleState();
}

class _InkWellExampleState extends State<InkWellExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InkWell Örnek"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              print("InkWell bastınız !");
            },
            child: Text(
              "sssssssssss",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          )
        ],
      ),
    );
  }
}
