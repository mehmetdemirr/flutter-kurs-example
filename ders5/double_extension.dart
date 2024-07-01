void main() {
  double para = 10.5;
  para.yazdir();
}

extension MoneyPrint on double {
  void yazdir() {
    print("$this ₺ var");
  }
}
