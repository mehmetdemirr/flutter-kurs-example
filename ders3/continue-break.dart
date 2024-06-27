void main() {
  //1-100(dahil) kadar yazdırsın
  //Ama 5 yazdırmasın !

  // for (int i = 1; i <= 100; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print("$i");
  // }

  //1-100 sayıları yazdırsın
  // 10 da döngüyü durdur (10 yazsın)

  for (int i = 1; i <= 100; i++) {
    print("$i");
    if (i == 10) {
      break;
    }
  }
}
