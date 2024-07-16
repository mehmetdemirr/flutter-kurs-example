import 'package:flutter/material.dart';
import 'package:kurs_app/ders10/uygulama1/cached/shared_pref.dart';

class DenemeScreen extends StatefulWidget {
  const DenemeScreen({super.key});

  @override
  State<DenemeScreen> createState() => _DenemeScreenState();
}

class _DenemeScreenState extends State<DenemeScreen> {
  final TextEditingController _name = TextEditingController();
  late String name;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((value) async {
      name = await SharedPref().readName();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merhaba $name"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _name,
              decoration: const InputDecoration(
                labelText: "Ad",
                hintText: "Adınızı giriniz...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await SharedPref().writeName(_name.text).then((value) async {
                name = await SharedPref().readName();
                setState(() {});
              });
            },
            child: const Text("Kaydet"),
          )
        ],
      ),
    );
  }
}
