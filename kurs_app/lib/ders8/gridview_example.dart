import 'package:flutter/material.dart';

class GridViewExampleScreen extends StatefulWidget {
  const GridViewExampleScreen({super.key});

  @override
  State<GridViewExampleScreen> createState() => _GridViewExampleScreenState();
}

class _GridViewExampleScreenState extends State<GridViewExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview Example"),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: 19,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("merhaba $index"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
