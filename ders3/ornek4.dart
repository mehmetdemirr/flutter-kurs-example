void main() {
  //Bir String'deki Karakterleri Tersten Yazdırma
  String kelime = "gaziantep";

  int uzunluk = kelime.length;
  print(uzunluk);
  //p => 8
  //e
  //t
  //n
  //a
  //i
  //z
  //a => 1
  //g => 0

  for (int i = uzunluk - 1; i >= 0; i--) {
    print(kelime[i]);
  }
}
