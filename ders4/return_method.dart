void main() {
  // // topla(12.3, -0.5);
  // // print(topla(12.3, -0.5));
  // double toplam = topla(12.3, -0.5);
  // print("Toplam : $toplam");
  carp(12, 5);

  int sonuc = carp2(3, 5);
  print(sonuc * 2);
}

double topla(double sayi1, double sayi2) {
  double toplam = sayi1 + sayi2;
  return toplam;
}

void carp(int sayi1, int sayi2) {
  print("Sayi 1: $sayi1");
  print("Sayi 2: $sayi2");
  print("Çarpma sonucu : ${sayi1 * sayi2}");
}

int carp2(int sayi1, int sayi2) {
  int sonuc = sayi1 * sayi2;
  return sonuc;
}
