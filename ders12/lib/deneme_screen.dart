import 'package:flutter/material.dart';

class DenemeScreen extends StatefulWidget {
  const DenemeScreen({super.key});

  @override
  State<DenemeScreen> createState() => _DenemeScreenState();
}

class _DenemeScreenState extends State<DenemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: " 🔍 Kategori Bul",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "merhaba" * 25,
                border: InputBorder.none,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SwitchListTile.adaptive(
              title: const Text("Learning Reminder"),
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
