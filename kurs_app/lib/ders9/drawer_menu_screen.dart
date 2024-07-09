import 'package:flutter/material.dart';
import 'package:kurs_app/ders8/first_screen.dart';

class DrawerMenuScreen extends StatefulWidget {
  const DrawerMenuScreen({super.key});

  @override
  State<DrawerMenuScreen> createState() => _DrawerMenuScreenState();
}

class _DrawerMenuScreenState extends State<DrawerMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Menu Example"),
      ),
      body: const Column(
        children: [
          Text("burası body alanı"),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   color: Colors.amber,
            //   child: const DrawerHeader(
            //       child: Column(
            //     children: [
            //       Text("Header alanı"),
            //     ],
            //   )),
            // )
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Column(
                  children: [
                    Text("Header alanı"),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FirstScreen();
                    },
                  ),
                );
              },
              leading: const Icon(Icons.home),
              title: const Text("Ana sayfa"),
              trailing: const Icon(Icons.arrow_forward),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Çıkış yap"),
                  Icon(Icons.logout_outlined),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
