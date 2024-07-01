//Her saniye bir sayı artırarak ekrana yazdırır

import 'dart:async';

void main() {
  int sayi = 1;

  Timer.periodic(Duration(seconds: 1), (timer) {
    print("timer : ${timer.isActive}");
    print(sayi);
    // ++sayi;
    // sayi = sayi + 1;
    // sayi += 1;

    if (sayi == 10) {
      timer.cancel();
    }
    sayi++;
  });
}
