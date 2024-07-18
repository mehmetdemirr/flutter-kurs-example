import 'package:ders14/screens/counter-provider/counter_view_model.dart';
import 'package:ders14/screens/counter-provider/widgets/fab_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderScreen extends StatefulWidget {
  const CounterProviderScreen({super.key});

  @override
  State<CounterProviderScreen> createState() => _CounterProviderScreenState();
}

class _CounterProviderScreenState extends State<CounterProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter provider screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Sayaç : ${context.watch<CounterViewModel>().counter}",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                // color: Colors.amber,
                ),
            // style: const TextStyle(fontSize: 30, fontFamily: ""),
          )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const FloatingButton(),
    );
  }
}
