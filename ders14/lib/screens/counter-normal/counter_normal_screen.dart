import 'package:flutter/material.dart';

class CounterNormalScreen extends StatefulWidget {
  const CounterNormalScreen({super.key});

  @override
  State<CounterNormalScreen> createState() => _CounterNormalScreenState();
}

class _CounterNormalScreenState extends State<CounterNormalScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter normal screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Sayaç : $counter",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                // color: Colors.amber,
                ),
            // style: const TextStyle(fontSize: 30, fontFamily: ""),
          )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter--;
              setState(() {});
            },
            child: const Icon(Icons.remove_outlined),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
