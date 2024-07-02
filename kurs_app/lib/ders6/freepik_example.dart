import 'package:flutter/material.dart';

class FreepikScreen extends StatefulWidget {
  const FreepikScreen({super.key});

  @override
  State<FreepikScreen> createState() => _FreepikScreenState();
}

class _FreepikScreenState extends State<FreepikScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 82, 145, 196),
              width: 500,
              height: 200,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    color: Colors.amber,
                    width: 100,
                    height: 100,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Doktor Veli Bey",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text("lsllslslslsl"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
