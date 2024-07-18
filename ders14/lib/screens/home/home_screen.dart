import 'dart:io';

import 'package:ders14/core/utils/print_method.dart';
import 'package:ders14/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImagePicker picker = ImagePicker();
// Pick an image.
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SettingsScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.settings_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: PopupMenuButton(
              tooltip: "image selected",
              position: PopupMenuPosition.under,
              offset: const Offset(100, 0),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: "1",
                    child: Text("Kamera"),
                  ),
                  const PopupMenuItem(
                    value: "2",
                    child: Text("Galeri"),
                  )
                ];
              },
              child: image == null
                  ? const Icon(
                      Icons.image_outlined,
                      size: 150,
                    )
                  : Image.file(
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                      File(image!.path),
                    ),
              onSelected: (value) async {
                switch (value) {
                  case "1":
                    //TODO burada kameradan fotograf alacağım
                    myPrint("kamera seçildi");
                    image = await picker.pickImage(source: ImageSource.camera);
                  case "2":
                    myPrint("galeri seçildi");
                    image = await picker.pickImage(source: ImageSource.gallery);
                  default:
                    myPrint("hata ile karşılaşıldı ! ");
                }
                setState(() {});
              },
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // image != null
          //     ? Image.file(
          //         width: 200,
          //         height: 200,
          //         fit: BoxFit.cover,
          //         File(image!.path),
          //       )
          //     : const Text("image seçilmedi")
        ],
      ),
    );
  }
}
