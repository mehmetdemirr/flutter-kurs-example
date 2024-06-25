void main() {
  double vizeNotu = 90;
  double finalNotu = 90;

  double vizeoran = 0.4;
  double finaloran = 0.6;

  double not = vizeNotu * vizeoran + finalNotu * finaloran;

  print("ortalama : $not");

  // 90-100 => AA
  // 80- 90 => BA
  // 70 - 80 => BB
  //diğerleri => CC

  if (not >= 90 && not <= 100) {
    print("Ders Notu : AA");
  } else if (not <= 90 && not >= 80) {
    print("Ders Notu : BA");
  } else if (not <= 80 && not >= 70) {
    print("Ders Notu : BB");
  } else {
    print("Ders Notu : CC");
  }

  // kullanıcı giriş örneği
  // String userName = "mehmet";
  // String password = "123456";
  // if (userName == "mehmet" && password == "123456") {
  //   print("başarıyla giriş yaptınız ");
  // } else {
  //   print("şifreniz veya parolanız yanlış. Lütfen kontrol ediniz!");
  // }

  // bool sinaviGectiMi = false;

  // if (sinaviGectiMi) {
  //   print("sınavu geçtiniz");
  // } else {
  //   print("sınavı geçemediniz ");
  // }

  int sayi1 = 13;
  int sayi2 = 13;

  print("sayi1 : $sayi1");
  print("sayi2 : $sayi2");
  if (sayi2 > sayi1) {
    // print("sayi 2 büyüktür sayi1");
    print("$sayi2 > $sayi1 ifadesi doğru");
  } else if (sayi1 == sayi2) {
    print("$sayi1 == $sayi2 eşit ifadesi olur");
  } else {
    print("$sayi2 > $sayi1 ifadesi yanlış");
    // print("sayi2 ,sayi1 den büyük değildir");
  }

  if (sayi2 != sayi1) {
    print("sayi 1 ,sayi2  ile aynı değil");
  } else {
    print("sayi1 ile sayi2 eşittir.Yani aynı sayıdır");
  }

  bool ehliyetAlabilirMi = true; // yani ehliyet alabilir

  if (!ehliyetAlabilirMi) {
    print("ehliyet alabilir");
  } else {
    print("ehliyet alamaz");
  }
  //veya :bu ifadelerden ikisinden biri true ise if bloğu çalışır
  // if (13 > 15 || 1 > 0) {
  //   print("doğru ifade");
  // } else {
  //   print("yanlış ifade");
  // }

  //ve : bu ifadelerden ikisinin de doğu olduğunda if bloğu çalışır
  if (13 > 15 && 1 > 0) {
    print("doğru ifade");
  } else {
    print("yanlış ifade");
  }
}
