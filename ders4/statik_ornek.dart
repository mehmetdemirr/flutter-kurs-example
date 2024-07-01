// ignore_for_file: public_member_api_docs, sort_constructors_first
class Araba {
  late int kilometre;
  late int yil;
  static String marka = "marka";

  static void markasiNe() {
    print("marka : ${marka}");
  }
}

void main() {
  var araba1 = Araba();
  araba1.kilometre = 1000;
  araba1.yil = 2023;
  print(araba1.kilometre);

  print(Araba());
}
