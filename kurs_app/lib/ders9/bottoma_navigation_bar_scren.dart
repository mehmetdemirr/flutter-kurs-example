import 'package:flutter/material.dart';
import 'package:kurs_app/ders9/anasayfam_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const AnasayfamScreen(),
    const Text("kişilerim"),
    const Text("mesajlarım"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar Example"),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Kişilerim",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Mesajlarım",
          ),
        ],
      ),
    );
  }
}
