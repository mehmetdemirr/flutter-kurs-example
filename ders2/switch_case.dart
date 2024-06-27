void main() {
  // 1 => bir
  // 2 => iki
  // 3 => üç
  // 4 => dört
  int sayi = 3;

  switch (sayi) {
    case 1:
      break;
    case 2:
      print("iki");
      break;
    case 3:
      print("üç");
      break;
    case 4:
      print("dört");
      break;
    default:
      print("belirlenemeyen sayı!");
      break;
  }

  if (sayi == 1) {
    print("bir");
  } else if (sayi == 2) {
    print("iki");
  } else if (sayi == 3) {
    print("üç");
  } else if (sayi == 4) {
    print("dört");
  } else {
    print("belirlenemeyen sayı !");
  }
}
