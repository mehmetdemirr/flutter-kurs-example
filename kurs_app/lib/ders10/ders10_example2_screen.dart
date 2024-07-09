import 'package:flutter/material.dart';
import 'package:kurs_app/ders10/image_extension_example.dart';

class Ders10Example2Screen extends StatefulWidget {
  const Ders10Example2Screen({super.key});

  @override
  State<Ders10Example2Screen> createState() => _Ders10Example2ScreenState();
}

class _Ders10Example2ScreenState extends State<Ders10Example2Screen> {
  String metin = "mehme ksksksksksskt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Örnekler"),
      ),
      body: Column(
        children: [
          Image.asset(
            ImageItem.flutterLogo.str(),
          ),
          Image.asset(
            ImageItem.restful.str(),
          ),
          Text(metin),
        ],
      ),
    );
  }
}
