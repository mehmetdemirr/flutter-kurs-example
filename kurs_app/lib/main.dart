import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurs App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: const DimamikSayfa(),
    );
  }
}

class DenemeSayfasi extends StatelessWidget {
  const DenemeSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " İlk uygulma",
          // style: TextStyle(
          //   color: Colors.white,
          // ),
        ),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      body: const Text(
        "merhaba",
        maxLines: 1,
      ),
    );
  }
}

//statless widget sayfası
class TestSayfasi extends StatelessWidget {
  const TestSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//statlfull widget sayfası
class DimamikSayfa extends StatefulWidget {
  const DimamikSayfa({super.key});

  @override
  State<DimamikSayfa> createState() => _DimamikSayfaState();
}

class _DimamikSayfaState extends State<DimamikSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ilk uygulmam"),
      ),
      body: Container(
        width: 300,
        height: 500,
        color: Colors.amber,
        child: const Text("body alanına yazı yazdım"),
      ),
    );
  }
}
