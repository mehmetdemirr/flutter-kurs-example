import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kurs_app/ders8/first_screen.dart';

class Ders8Screen extends StatefulWidget {
  const Ders8Screen({super.key});

  @override
  State<Ders8Screen> createState() => _Ders8ScreenState();
}

class _Ders8ScreenState extends State<Ders8Screen> {
  @override
  void initState() {
    super.initState();
    print("ilk çalışacak kod bloğunu buraya yazdım ");
  }

  @override
  void dispose() {
    super.dispose();
    print("Sayfam kapandığında çalışacak kod bloğunu yazdım ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text("Ders "),
            Icon(Icons.filter_8_outlined),
          ],
        ),
      ),
      body: Column(
        children: [
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return const FirstScreen();
          //         },
          //       ),
          //     );
          //   },
          //   child: const Text(
          //     "Diğer sayafa geçiş yap",
          //   ),
          // )

          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("Bu bir snackbar !"),
                  backgroundColor: Colors.blue,
                  duration: const Duration(
                    seconds: 5,
                  ),
                  action: SnackBarAction(
                    label: "Kapat",
                    onPressed: () {
                      print("kullanıcı kapata bastı");
                    },
                  ),
                ),
              );
            },
            child: const Text("Snackbar göster"),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (context) {
          //         return AlertDialog.adaptive(
          //           actions: [
          //             TextButton(
          //               onPressed: () {
          //                 print("iptale bastın ");
          //                 Navigator.pop(context);
          //               },
          //               child: const Text("İptal"),
          //             ),
          //             TextButton(
          //               onPressed: () {
          //                 print("tamama bastın ");
          //                 //burada işlemleri yaptık
          //                 /// kod bloğunu buraya koyayabilir
          //                 Navigator.pop(context);
          //               },
          //               child: const Text("Tamam"),
          //             )
          //           ],
          //           content: const Text(
          //             "İşleminize devam etmek istiyor musunuz ?",
          //           ),
          //           title: const Row(
          //             children: [
          //               Icon(
          //                 Icons.info_outline,
          //                 color: Colors.red,
          //                 size: 30,
          //               ),
          //               Text("Uyarı"),
          //             ],
          //           ),
          //         );
          //       },
          //     );
          //   },
          //   child: const Text("Alert Dialog Göster"),
          // ),
          // PopupMenuButton(
          //   iconSize: 50,
          //   iconColor: Colors.amber,
          //   tooltip: "Seçenekler",
          //   onSelected: (value) {
          //     switch (value) {
          //       case 1:
          //         print("seçenek 1 bastın ");
          //       case 2:
          //         print("seçenek 2 bastın ");
          //     }
          //   },
          //   offset: const Offset(20, 60),
          //   icon: const Icon(Icons.more_vert_outlined),
          //   itemBuilder: (context) {
          //     return [
          //       const PopupMenuItem(
          //         value: 1,
          //         child: Text("Seçenek 1"),
          //       ),
          //       const PopupMenuItem(
          //         value: 2,
          //         child: Text("Seçenek 2"),
          //       )
          //     ];
          //   },
          // ),

          // Image.network(
          //   // scale: 0.5,
          //   width: 300,
          //   height: 300,
          //   fit: BoxFit.cover,
          //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREoRGyXmHy_6aIgXYqWHdOT3KjfmnuSyxypw&s",
          // ),

          Image.asset(
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            "assets/images/flutter-logo.png",
          ),
          CachedNetworkImage(
            imageUrl: "https://picsum.photos/200/300",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Row(
              children: [
                Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 50,
                ),
                Text("Resim bulunamadı"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
