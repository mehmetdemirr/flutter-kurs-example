import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizedBoxExample extends StatefulWidget {
  const SizedBoxExample({super.key});

  @override
  State<SizedBoxExample> createState() => _SizedBoxExampleState();
}

class _SizedBoxExampleState extends State<SizedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("sizedbox"),
        ),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Container(
                color: Colors.black,
              ),
            ),
          ],
        ));
  }
}
