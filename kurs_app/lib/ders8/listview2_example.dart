import 'package:flutter/material.dart';

class ListView2ExampleScreen extends StatefulWidget {
  const ListView2ExampleScreen({super.key});

  @override
  State<ListView2ExampleScreen> createState() => _ListView2ExampleScreenState();
}

class _ListView2ExampleScreenState extends State<ListView2ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView "),
      ),
      body: ListView(
        shrinkWrap: true,
        children: const [
          Text("merhaba"),
          ListTile(
            leading: CircleAvatar(),
            title: Text("title"),
            subtitle: Text("sssssssssss"),
            trailing: Text("Tarih"),
          ),
        ],
      ),
    );
  }
}