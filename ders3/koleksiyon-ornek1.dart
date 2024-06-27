void main() {
  //Öğrenciler Listesi Tanımla

  Map<String, int> ogrenciler = Map();

  ogrenciler["Mehmet"] = 10;
  ogrenciler["Veli"] = 20;
  ogrenciler["Ahmet"] = 2;

  for (var ogrenci in ogrenciler.entries) {
    print("key: ${ogrenci.key} | value : ${ogrenci.value}");
  }
}
