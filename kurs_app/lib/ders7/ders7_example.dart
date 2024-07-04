import 'package:flutter/material.dart';

class Ders7Example extends StatefulWidget {
  const Ders7Example({super.key});

  @override
  State<Ders7Example> createState() => _Ders7ExampleState();
}

class _Ders7ExampleState extends State<Ders7Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ders 7"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            width: 100,
            height: 100,
            child: const Text("aaa"),
          ),
          Text(
            maxLines: 4,
            "merhaba" * 10,
            style: const TextStyle(
              fontSize: 34,
              color: Colors.pink,
              backgroundColor: Colors.black12,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 35),
          Text(
            "themedan aldığım tasarım",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.red,
                  backgroundColor: Colors.black12,
                ),
          ),
          ElevatedButton(
            onPressed: () {
              //burada çalışacak kod bloğunu yazarız
              print("elevated button çalıştı");
            },
            child: const Text("Elevated buton "),
          ),
          TextButton(
            onPressed: () {
              print("text butona bastın ");
              //burada çalışacak kod bloğunu yazarız
            },
            child: const Text(
              "Text buton",
            ),
          ),
          OutlinedButton(
            onPressed: () {
              print("OutlinedButton bastın ");
              //burada çalışacak kod bloğunu yazarız
            },
            child: const Text("Outlined Buton"),
          )
        ],
      ),
    );
  }
}
