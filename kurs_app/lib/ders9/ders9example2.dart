import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class Ders9Example2Screen extends StatefulWidget {
  const Ders9Example2Screen({super.key});

  @override
  State<Ders9Example2Screen> createState() => _Ders9Example2ScreenState();
}

class _Ders9Example2ScreenState extends State<Ders9Example2Screen> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ders 9 example 2"),
      ),
      body: Column(
        children: [
          Visibility(
            visible: visible,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              enabled: true,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      color: Colors.amber,
                      width: 500,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    visible = true;
                  });
                },
                child: const Text("Görüsün "),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    visible = false;
                  });
                },
                child: const Text("Görünmesin "),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
