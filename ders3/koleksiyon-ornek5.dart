void main() {
  //Cümlede bir kelime ne kadar geçmiş (kelime frenkansı)

  String cumle = "Bir-varmış-bir-yokmuş.-Bir-zamanlar-....";

  // print(cumle);

  cumle = cumle.toLowerCase();

  // print(cumle);

  String aranacakKelime = "bir";

  aranacakKelime = aranacakKelime.toLowerCase();

  List<String> kelimeler = cumle.split("-");

  int kelimeTekrari = 0;

  for (String kelime in kelimeler) {
    if (kelime == aranacakKelime) {
      // print("bulduk");
      kelimeTekrari = kelimeTekrari + 1;
      // kelimeTekrari += 1;
      // kelimeTekrari++;
      // ++kelimeTekrari;
    }
  }

  print("'$aranacakKelime' cümlede $kelimeTekrari kez tekrar edilidi.");
}
