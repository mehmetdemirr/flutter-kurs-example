import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.sayfaAdi});

  final String sayfaAdi;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Second Screen"),
      ),
      body: Column(
        children: [
          Text("${widget.sayfaAdi} sayfası"),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Ana Sayfaya git(geri git) "),
          )
        ],
      ),
    );
  }
}
