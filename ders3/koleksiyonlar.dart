import 'dart:io';

void main() {
  // 5 tane öğrencimiz var

  String ogrenci1 = "Ahmet";
  String ogrenci2 = "Veli";
  String ogrenci3 = "Ali";
  String ogrenci4 = "Mehmet";
  String ogrenci5 = "Ayşe";

  // print(ogrenci1);
  // print(ogrenci2);
  // print(ogrenci3);
  // print(ogrenci4);
  // print(ogrenci5);

  List<String> ogrenciler = [];

  ogrenciler.add("Ahmet"); //0
  ogrenciler.add("Veli"); //1
  ogrenciler.add("Ali"); // 2
  ogrenciler.add("Mehmet"); // 3
  ogrenciler.add("Ayşe"); //4

  // print(ogrenciler[0]);
  // print(ogrenciler[1]);
  // print(ogrenciler[2]);
  // print(ogrenciler[3]);
  // print(ogrenciler[4]);
  // print(ogrenciler[5]); // 5. indis olmadığı için hata verir

  // for (String isim in ogrenciler) {
  //   print(isim);
  // }

  // print("******Eski Liste********");
  // ogrenciler.forEach((isim) {
  //   print(isim);
  // });
  // print("Şuan listede ${ogrenciler.length} öğrenci var.");

  // //Ali mezun olsun
  // ogrenciler.remove("Ali");

  // print("******Yeni Liste ********");
  // ogrenciler.forEach((isim) {
  //   print(isim);
  // });

  // print("Şuan listede ${ogrenciler.length} öğrenci var.");

  // for (int i = 0; i < ogrenciler.length; i++) {
  //   print(ogrenciler[i]);
  // }
  // print("*********");
  // ogrenciler.forEach((isim) {
  //   print(isim);
  // });

  // Set<String> meyveler = Set();

  // meyveler.add("Ayva");
  // meyveler.add("Elma");
  // meyveler.add("Elma1");
  // meyveler.add("Elma"); //bunu eklemeyecek
  // meyveler.add("muz");

  // for (String meyve in meyveler) {
  //   print(meyve);
  // }

  // Set<int> numaralar = {1, 2, 4, 5, 10};

  // numaralar.add(10); // eklemeyecek
  // numaralar.add(3);

  // for (int numara in numaralar) {
  //   print(numara);
  // }

  // //4 numaralı öğrenci mezun oldu
  // numaralar.remove(4);
  // print("-----Yeni Numaralar Lİstesi");

  // for (int numara in numaralar) {
  //   print(numara);
  // }

  Map<String, String> plakalar = Map();

  plakalar["1"] = "Adana";
  plakalar["27"] = "Antep";
  plakalar["7"] = "Antalya";
  plakalar["6"] = "Ankara";

  for (var il in plakalar.entries) {
    print("key : ${il.key} | value : ${il.value}");
  }

  //adanayı il olmaktan çıkardım
  plakalar.remove("1");

  // print("plaka giriniz :");
  // String? plaka = stdin.readLineSync();

  // if (plakalar[plaka] == null) {
  //   print("$plaka : böyle bir plaka yok");
  // } else {
  //   print("plaka var . Böyle :" + plakalar["$plaka"].toString());
  // }
  plakalar["27"] = "Gaziantep";

  print("******yeni değerler******");
  for (var il in plakalar.entries) {
    print("key : ${il.key} | value : ${il.value}");
  }

  print(plakalar.length);
}
