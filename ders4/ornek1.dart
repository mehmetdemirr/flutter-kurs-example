//Selam Verme Fonksiyonu Yap
void main() {
  List<String> isimler = ["Ali", "Mehmet", "Veli"];

  for (String isim in isimler) {
    selamla(isim);
  }
}

void selamla(String isim) {
  print("Merhaba $isim");
}
