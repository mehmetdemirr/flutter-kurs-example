void main() {
  //Öğrenci Not Listesi Tanımla Ve Geçdi-Geçmedi Yazdırma

  Map<String, double> notListesi = Map();

  notListesi["Ali"] = 55.5;
  notListesi["Ayşe"] = 45;
  notListesi["Veli"] = 30;

  for (var not in notListesi.entries) {
    if (not.value >= 50) {
      print("${not.key} dersi başarıyla geçti");
    } else {
      print("${not.key} dersten kaldı");
    }
  }
}
