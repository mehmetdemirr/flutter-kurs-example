import 'package:ders14/screens/counter-provider/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            context.read<CounterViewModel>().sayiAzalt();
          },
          child: const Icon(Icons.remove_outlined),
        ),
        const SizedBox(height: 20),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterViewModel>().sayiArttir();
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
