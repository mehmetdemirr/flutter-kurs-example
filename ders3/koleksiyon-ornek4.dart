void main() {
  //Sayı Listesindeki Elemanları Tek Çift Olarak Ayırma
  List<int> sayilar = [1, 2, 6, 3, 11, 27, 7];

  List<int> ciftSayilar = [];
  List<int> tekSayilar = [];

  for (int i = 0; i < sayilar.length; i++) {
    if (sayilar[i] % 2 == 0) {
      // print("${sayilar[i]} bu sayı çiftir");
      ciftSayilar.add(sayilar[i]);
    } else {
      // print("${sayilar[i]} bu sayı tektir");
      tekSayilar.add(sayilar[i]);
    }
  }

  for (int i in sayilar) {
    print(i);
  }

  print("*****Tek Sayılar*****");
  tekSayilar.forEach((element) {
    // print("$element bu sayı tektir");
    print(element);
  });

  print("*****Çift Sayılar*****");
  ciftSayilar.forEach((element) {
    // print("$element bu sayı çiftir");
    print(element);
  });
}
