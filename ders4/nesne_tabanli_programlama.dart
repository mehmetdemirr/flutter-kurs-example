void main() {
  //Eski usul yaptığımızda bu şekilde yapabiliriz !
  // String arabaMarka = "araba marka";
  // int arabaKoltukSayisi = 1;
  // int arabaTekerSayisi = 4;
  // String arabaRenk = "kırmızı";

  // print("araba 1 teker sayisi : $arabaTekerSayisi");
  // print("araba 1 koltuk sayisi : $arabaKoltukSayisi");
  // print("araba 1 markası : $arabaMarka");

  // String araba2Marka = "araba marka";
  // int araba2KoltukSayisi = 1;
  // int araba2TekerSayisi = 4;
  // String araba2Renk = "kırmızı";

  // print("araba 1 teker sayisi : $araba2TekerSayisi");
  // print("araba 1 koltuk sayisi : $araba2KoltukSayisi");
  // print("araba 1 markası : $araba2Marka");

  // Araba yeniAraba = Araba();
  // yeniAraba.calisyorMu = true;
  // yeniAraba.tekerSayisi = 10;

  // yeniAraba.koltukSayisi = 5;
  // yeniAraba.marka = "audi";
  // yeniAraba.renk = "beyaz";

  // // print("Arabanın teker sayısı : ${yeniAraba.tekerSayisi}");
  // // print("Arabanın koltuk sayısı : ${yeniAraba.koltukSayisi}");
  // // print("Arabanın markası  : ${yeniAraba.marka}");
  // // print("Arabanın rengi  : ${yeniAraba.renk}");
  // yeniAraba.bilgiYazdir();

  // yeniAraba.renk = "kırmızı";

  // yeniAraba.bilgiYazdir();

  // yeniAraba.hizArttir(100);
  // yeniAraba.bilgiYazdir();

  // yeniAraba.hizArttir(30);

  // yeniAraba.bilgiYazdir();

  // yeniAraba.hizAzalt(40);

  // yeniAraba.bilgiYazdir();

  // yeniAraba.parkEt();

  // yeniAraba.bilgiYazdir();

  Araba araba1 = Araba();
  araba1.hizArttir(300);
  var araba2 = Araba();
  Araba araba3 = Araba();

  araba1.bilgiYazdir();
  araba2.bilgiYazdir();
  araba3.bilgiYazdir();
}

class Araba implements Arac {
  // int tekerSayisi = 4;
  // late int tekerSayisi ;
  int? tekerSayisi;
  int koltukSayisi = 1;
  String marka = "marka belirtilmemiş";
  String renk = "renk belirtilmemiş";
  int hiz = 0;
  int maxHiz = 290;
  bool calisyorMu = false;

  void bilgiYazdir() {
    print("***************************");
    print("Arabanın teker sayısı : ${this.tekerSayisi}");
    print("Arabanın koltuk sayısı : ${this.koltukSayisi}");
    print("Arabanın marka : ${this.marka}");
    print("Arabanın rengi : ${this.renk}");
    print("Arabanın hızı : ${this.hiz}");
    print("Arabanın çalışıyor mu : ${this.calisyorMu}");
  }

  void hizArttir(int artisDegeri) {
    if (!(this.maxHiz < (artisDegeri + this.hiz))) {
      this.hiz = this.hiz + artisDegeri;
      if (this.hiz > 0) {
        this.calisyorMu = true;
      } else {
        this.calisyorMu = false;
      }
    } else {
      print("bu kadar fazla hiz artıramzsınız hız limitiniz var");
    }
  }

  void hizAzalt(int azalisDegeri) {
    this.hiz = this.hiz - azalisDegeri;
    if (this.hiz > 0) {
      this.calisyorMu = true;
    } else {
      this.calisyorMu = false;
    }
  }

  void parkEt() {
    this.hiz = 0;
    this.calisyorMu = false;
  }

  @override
  void kornaCal() {
    print("Korna çalındı !!!!");
  }
}

abstract class Arac {
  void kornaCal();
}
