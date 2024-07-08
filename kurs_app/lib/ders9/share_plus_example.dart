import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusExample extends StatefulWidget {
  const SharePlusExample({super.key});

  @override
  State<SharePlusExample> createState() => _SharePlusExampleState();
}

class _SharePlusExampleState extends State<SharePlusExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Share plus example"),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              Share.share('check out my website https://example.com');
            },
            icon: const Icon(Icons.share),
          )
        ],
      ),
    );
  }
}
