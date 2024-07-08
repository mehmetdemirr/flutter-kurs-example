import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';

class Ders9ExampleScreen extends StatefulWidget {
  const Ders9ExampleScreen({super.key});

  @override
  State<Ders9ExampleScreen> createState() => _Ders9ExampleScreenState();
}

class _Ders9ExampleScreenState extends State<Ders9ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ders 9 Example"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // EasyLoading.showSuccess("İşlem Başarılı !");
              // EasyLoading.showError("Hata oldu !");
              // EasyLoading.showInfo("Bilgilendirme");
              // EasyLoading.showProgress(0.9, status: 'downloading...');
              EasyLoading.showToast("merhaba");
            },
            child: const Text("Easloading aç"),
          ),
          Lottie.asset("assets/json/lottie.json"),
          SizedBox(
            width: 300,
            height: 300,
            child: Lottie.network(
                "https://lottie.host/26ba97e2-b754-4c9e-a565-d1de50b2cc8a/s7LF6NWC6v.json"),
          ),
        ],
      ),
    );
  }
}
