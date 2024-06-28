//Üç Sayıdan En Büyük Sayıyı Bulan Fonksiyon Yap

import 'dart:io';

void main() {
  print("Sayi1 giriniz:");
  String? sayi1String = stdin.readLineSync();
  print("Sayi2 giriniz:");
  String? sayi2String = stdin.readLineSync();
  print("Sayi3 giriniz:");
  String? sayi3String = stdin.readLineSync();

  int? sayi1 = int.tryParse(sayi1String ?? "");
  int? sayi2 = int.tryParse(sayi2String ?? "");
  int? sayi3 = int.tryParse(sayi3String ?? "");
  enBuyukSayiyiBul(sayi1 ?? 0, sayi2 ?? 0, sayi3 ?? 0);
}

void enBuyukSayiyiBul(int sayi1, int sayi2, int sayi3) {
  int enBuyukSayi = sayi1;

  if (sayi2 > enBuyukSayi) {
    enBuyukSayi = sayi2;
  }
  if (sayi3 > enBuyukSayi) {
    enBuyukSayi = sayi3;
  }

  print("En Büyük Sayı : $enBuyukSayi");
}
