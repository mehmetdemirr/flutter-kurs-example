import 'package:flutter/material.dart';

class CardExample extends StatefulWidget {
  const CardExample({super.key});

  @override
  State<CardExample> createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Örnek"),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: const Card(
                // color: Colors.amber,
                elevation: 15,
                // shadowColor: Colors.blue.shade200,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Bu bir card widgetdır"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
