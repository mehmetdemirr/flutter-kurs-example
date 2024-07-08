import 'package:flutter/material.dart';
import 'package:kurs_app/ders9/anasayfam_screen.dart';

class TabbarViewExampleScreen extends StatefulWidget {
  const TabbarViewExampleScreen({super.key});

  @override
  State<TabbarViewExampleScreen> createState() =>
      _TabbarViewExampleScreenState();
}

class _TabbarViewExampleScreenState extends State<TabbarViewExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: const Text("tab bar widget"),
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.red,
            dividerColor: Colors.pink,

            // physics: NeverScrollableScrollPhysics(),
            tabs: [
              Tab(
                text: "Anasayfa",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Mesajlarım",
                icon: Icon(Icons.message),
              ),
              Tab(
                text: "Kişilerim",
                icon: Icon(Icons.group),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AnasayfamScreen(),
            Text("Mesajlarım"),
            Text("Kişilerim"),
          ],
        ),
      ),
    );
  }
}
