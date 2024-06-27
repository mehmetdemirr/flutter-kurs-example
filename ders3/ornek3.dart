void main() {
  //1'den 1000'a Kadar (1000 dahil) Olan Sayıların Toplamını Hesaplama

  int toplam = 0;

  for (int i = 1; i <= 1000; i = i + 1) {
    toplam = toplam + i;
  }

  print("1-1000 sayıların toplamı : $toplam");

  // n* (n+1) / 2

  print(1000 * 1001 / 2);
}
