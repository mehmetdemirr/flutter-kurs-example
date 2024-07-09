import 'package:flutter/material.dart';

class ResponsiveDesignScren extends StatefulWidget {
  const ResponsiveDesignScren({super.key});

  @override
  State<ResponsiveDesignScren> createState() => _ResponsiveDesignScrenState();
}

class _ResponsiveDesignScrenState extends State<ResponsiveDesignScren> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Çoklu ekran tasarımı"),
      ),
      body: screenSize.width < 600
          ? Column(
              children: [
                Container(
                  color: Colors.yellow,
                  width: screenSize.width,
                  height: 100,
                ),
                Container(
                  color: Colors.pink,
                  width: screenSize.width,
                  height: 100,
                )
              ],
            )
          : Row(
              children: [
                Container(
                  color: Colors.yellow,
                  width: screenSize.width / 2,
                  height: 100,
                ),
                Container(
                  color: Colors.pink,
                  width: screenSize.width / 2,
                  height: 100,
                )
              ],
            ),
    );
  }
}
