// Dairenin Alanını Hesaplayan Fonksiyon Yap

// n * r *r  => daire alan formülü
// 2 * n * r  => daire çevre formülü

import 'dart:math';

const double pi = 3.14;
void main() {
  double alan = daireAlanHesapla(1.5);

  print("Alan : $alan");
}

double daireAlanHesapla(double yariCap) {
  // double alan = pi * kareAl(yariCap);
  double alan = pi * pow(yariCap, 2);

  return alan;
}

double kareAl(double sayi) {
  double sonuc = sayi * sayi;
  return sonuc;
}
