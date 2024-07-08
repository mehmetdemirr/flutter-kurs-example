import 'package:flutter/material.dart';
import 'package:kurs_app/ders8/card_example.dart';
import 'package:kurs_app/ders8/ders8_screen.dart';
import 'package:kurs_app/ders8/first_screen.dart';
import 'package:kurs_app/ders8/form_example.dart';
import 'package:kurs_app/ders8/sayfa1_screen.dart';
import 'package:kurs_app/ders8/scroll_view_screen.dart';
import 'package:kurs_app/ders8/web_view_screen.dart';

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
            elevation: 20,
          ),
          cardTheme: const CardTheme(
            color: Color.fromARGB(255, 241, 122, 114),
          ),
          // textTheme: const TextTheme(
          //   bodySmall: TextStyle()
          // ),
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.black12,
          )),
      home: const FormExample(),
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
