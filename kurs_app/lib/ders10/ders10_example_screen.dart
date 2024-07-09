import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kurs_app/ders10/custom_button.dart';

class Ders10ExampleScreen extends StatefulWidget {
  const Ders10ExampleScreen({super.key});

  @override
  State<Ders10ExampleScreen> createState() => _Ders10ExampleScreenState();
}

class _Ders10ExampleScreenState extends State<Ders10ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ders 10 Örnek"),
      ),
      body: Column(
        children: [
          CustomButton(
            buttonText: "deneme 123",
            onPressed: () {
              print("mehmet");
            },
          ),
          CustomButton(
            buttonText: "isim yazdır",
            onPressed: () {
              print("ali -ayşe - fatma ");
            },
          ),
          Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red,
                  Color.fromARGB(
                    255,
                    79,
                    73,
                    73,
                  ),
                  Color.fromARGB(255, 63, 75, 167),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25) +
                const EdgeInsets.only(top: 10),
            child: const Divider(
              thickness: 3,
              color: Colors.black12,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: VerticalDivider(
                thickness: 3,
                width: 10,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
