void main() {
  //Bir Sayının Faktöryelini Hesaplama
  // 5! => 5 * 4 * 3 * 2 * 1
  // 6! => 6 * 5 * 4 * 3 * 2 * 1

  int faktoryel = 1;

  for (int sayi = 1; sayi <= 7; sayi++) {
    faktoryel *= sayi;
  }
  print("7! = $faktoryel");
}
