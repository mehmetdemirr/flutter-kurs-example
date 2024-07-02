import 'package:flutter/material.dart';
import 'package:kurs_app/ders6/align_example.dart';
import 'package:kurs_app/ders6/center_example.dart';
import 'package:kurs_app/ders6/expanded_example.dart';
import 'package:kurs_app/ders6/freepik_example.dart';
import "package:kurs_app/ders6/main_axis_size.dart";
import 'package:kurs_app/ders6/padding_example.dart';
import 'package:kurs_app/ders6/sizedbox_example.dart';
import 'package:kurs_app/ders6/spacer_example.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurs App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
      ),
      home: const ExpandedExample(),
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
        title: const Text("Deneme Başlık"),
      ),
      body: Center(
        child: Container(
          color: Colors.yellow,
          height: 200,
          width: 200,
          alignment: Alignment.center,
          child: const Text(
            "test",
          ),
        ),
      ),
    );
  }
}
