// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  // var bmw = Car(
  //   tekerSayisi: 10,
  //   koltukSayisi: 4,
  //   marka: "bmw",
  //   renk: "siyah",
  //   hiz: 0,
  //   maxHiz: 300,
  //   calisyorMu: false,
  // );

  // bmw.bilgiYazdir();

  Car sahin = Car(
    tekerSayisi: 4,
    koltukSayisi: 3,
    marka: "tofas",
    renk: "beyaz",
    hiz: 0,
    maxHiz: 200,
    calisyorMu: false,
  );
  sahin.calisyorMu = false;
  sahin.bilgiYazdir();

  ElektikliAraba tesla = ElektikliAraba(sarjDurumu: 70);

  tesla.calisyorMu = false;

  tesla.sarjDurumu = 40;
  tesla.sarjEt(10);
  tesla.bilgiYazdir();

  arabaHangiRenk(sahin);
  arabaHangiRenk(tesla);
}

class Car {
  // int tekerSayisi = 4;
  // late int tekerSayisi ;
  late int tekerSayisi;
  int koltukSayisi = 1;
  String marka = "marka belirtilmemiş";
  String renk = "renk belirtilmemiş";
  int hiz = 0;
  int maxHiz = 290;
  bool calisyorMu = true;

  Car({
    required this.tekerSayisi,
    required this.koltukSayisi,
    required this.marka,
    required this.renk,
    required this.hiz,
    required this.maxHiz,
    required this.calisyorMu,
  });

  // Car({
  //   required this.tekerSayisi,
  //   required this.marka,
  // }) {
  //   print("ilk çalışacak method(ilk nesen oluşturduğumuzda)");
  // }

  void bilgiYazdir() {
    print("***************************");
    print("Arabanın teker sayısı : ${this.tekerSayisi}");
    print("Arabanın koltuk sayısı : ${this.koltukSayisi}");
    print("Arabanın marka : ${this.marka}");
    print("Arabanın rengi : ${this.renk}");
    print("Arabanın hızı : ${this.hiz}");
    print("Arabanın çalışıyor mu : ${this.calisyorMu}");
    print("Arabanın max hız : ${this.maxHiz}");
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
}

class ElektikliAraba extends Car {
  double sarjDurumu = 0;

  ElektikliAraba({
    required this.sarjDurumu,
  }) : super(
          tekerSayisi: 0,
          koltukSayisi: 0,
          marka: '',
          renk: '',
          hiz: 0,
          maxHiz: 0,
          calisyorMu: false,
        );

  void sarjEt(int artisDegeri) {
    if (sarjDurumu >= 100) {
      print("şarj dolu şeklinde çıktı yaz");
    } else {
      this.sarjDurumu += artisDegeri;
    }
  }
}

void arabaHangiRenk(Car araba) {
  print("Arabanın rengi: ${araba.renk}");
}
