import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExapmleScreen extends StatefulWidget {
  const ExapmleScreen({super.key});

  @override
  State<ExapmleScreen> createState() => _ExapmleScreenState();
}

class _ExapmleScreenState extends State<ExapmleScreen> {
  bool onaylandiMi = false;
  int groupValue = 1;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.green.shade700, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 10),
          Icon(Icons.search_outlined),
          SizedBox(width: 10),
          Icon(Icons.more_vert_outlined),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print("icona bastın");
            },
            child: const Icon(
              Icons.sms_outlined,
              size: 50,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {
              print("icona buttona bastın");
            },
            icon: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Checkbox.adaptive(
                value: onaylandiMi,
                onChanged: (value) {
                  setState(() {
                    onaylandiMi = value ?? false;
                  });
                },
              ),
              const Text("Okudum kabul ediyorum .")
            ],
          ),
          Row(
            children: [
              Radio.adaptive(
                value: 1,
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value ?? 1;
                  });
                },
              ),
              const Text("Birinci Seçenek")
            ],
          ),
          Row(
            children: [
              Radio.adaptive(
                value: 2,
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value ?? 1;
                  });
                },
              ),
              const Text("İkinci Seçenek")
            ],
          ),
          Row(
            children: [
              Radio.adaptive(
                value: 3,
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value ?? 1;
                  });
                },
              ),
              const Text("Üçüncü Seçenek")
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ElevatedButton(
                onPressed: () {
                  // print("Durum : $onaylandiMi");
                  if (onaylandiMi) {
                    print("kayıt olabilir");
                    print("Hangi Seçenek : $groupValue");
                  } else {
                    print("kayıt olamazsın !!!!!");
                  }
                },
                child: const Text("Kayıt Ol"),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              semanticsLabel: "Progress",
              value: 0.7,
              color: Colors.pink,
              backgroundColor: Colors.black26,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: Column(
              children: [
                CircularProgressIndicator(
                  // value: 0.6,
                  color: Colors.amber,
                  backgroundColor: Colors.black38,
                ),
              ],
            ),
          ),
          Slider(
            activeColor: Colors.green,
            value: sliderValue,
            max: 100,
            min: 0,
            divisions: 20,
            label: "${sliderValue.floor()}",
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
