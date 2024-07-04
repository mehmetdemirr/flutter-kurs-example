import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  TextEditingController isimController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Textfield Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: isimController,
              textAlign: TextAlign.start,
              readOnly: false,
              keyboardType: TextInputType.number,
              obscureText: false,
              obscuringCharacter: '*',
              maxLines: 1,
              maxLength: 10,
              decoration: const InputDecoration(
                hintText: "İsminizi giriniz ...",
                hintStyle: TextStyle(color: Colors.black45),
                labelText: "İsim",
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("${isimController.text} yazdırım !");
            },
            child: const Text("Yazdır"),
          )
        ],
      ),
    );
  }
}
