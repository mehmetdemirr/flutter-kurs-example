import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kurs_app/ders8/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("First Screen"),
            GestureDetector(
              onTap: () {
                print("Meyvelere bastın");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondScreen(sayfaAdi: "Meyveler ");
                    },
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Meyveler",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 35,
                      ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                print("Sebzeler bastın");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondScreen(sayfaAdi: "Sebzeler ");
                    },
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Sebzeler",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 35,
                      ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                print("İçecekler bastın");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondScreen(sayfaAdi: "İçecekler ");
                    },
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "İçecekler",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 35,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
