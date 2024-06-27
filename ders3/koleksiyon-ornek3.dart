void main() {
  //Soru Cevapları Listesi Oluştur (Cevaplar Benzersiz Olur)

  //Gaziantep plakası kaçtır ?
  // cevaplar için set oluştur
  // 1 27 18 28

  // Set<int> cevaplar = {1, 27, 18, 28};

  Set<int> cevaplar = Set();
  cevaplar.add(1);
  cevaplar.add(27);
  cevaplar.add(18);
  cevaplar.add(28);

  print("cevaplar:");

  cevaplar.forEach((element) {
    print(element);
  });
}
