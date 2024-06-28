//Faktöriyel Fonksiyonu Yap

void main() {
  int sayi = 10;
  int faktoryelSonucu = faktoryelHesapla(sayi);

  print("$sayi ! = $faktoryelSonucu şeklinde bulmuş olduk");
}

int faktoryelHesapla(int sayi) {
  int faktoryel = 1;
  for (int i = 1; i <= sayi; i++) {
    faktoryel *= i;
  }

  return faktoryel;
}
