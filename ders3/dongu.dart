void main() {
  // String kelime = "merhaba ";
  // print(kelime);
  // print(kelime);
  // print(kelime);
  // print(kelime);
  // print(kelime);

  // int sayi = 10;
  // print(sayi);
  // sayi = sayi + 1;
  // print(sayi);
  // sayi += 1;
  // print(sayi);
  // sayi++;
  // print(sayi);
  // ++sayi;
  // print(sayi);

  // String metin = "";

  // for (int sayac = 1; sayac <= 100; sayac++) {
  //   //koşul sağlandıkça çalışcak kod bloğu
  //   metin += "$sayac. merhaba , ";
  //   // print("$sayac. merhaba");
  // }

  // print(metin);

  int sayac = 1;

  while (sayac <= 0) {
    print("$sayac. merhaba while döngüsü");
    sayac++;
    ++sayac;
    sayac = sayac + 1;
    sayac += 1;
  }

  int sayac2 = 1;

  do {
    print("$sayac2. merhaba do while döngüsü");
    sayac2++;
  } while (sayac2 <= 0);
}
