import 'package:flutter/material.dart';

class DenemeScreen extends StatelessWidget {
  const DenemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deneme Sayfası"),
      ),
      body: Row(
        //aralarındaki boşluğu eşit şekilde dağıttım => spaceEvenly
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.amber,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}
