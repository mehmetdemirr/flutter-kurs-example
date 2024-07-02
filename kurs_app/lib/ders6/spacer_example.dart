import 'package:flutter/material.dart';

class SpacerExample extends StatelessWidget {
  const SpacerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Spacer Exapmle"),
        ),
        body: Row(
          children: [
            Container(
              width: 100,
              height: 200,
              color: Colors.black,
            ),
            const Spacer(),
            Container(
              width: 100,
              height: 200,
              color: Colors.blue,
            ),
            const Spacer(),
            Container(
              width: 100,
              height: 200,
              color: Colors.red,
            ),
          ],
        ));
  }
}
