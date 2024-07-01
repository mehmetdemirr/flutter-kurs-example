// ignore_for_file: public_member_api_docs, sort_constructors_first
class Insan {
  String ad;
  String soyAd;
  Adres adres;

  Insan({
    required this.ad,
    required this.soyAd,
    required this.adres,
  });
}

class Adres {
  String acikAdres;
  String il;
  String ilce;
  String mahalle;
  String sokak;

  Adres({
    required this.acikAdres,
    required this.il,
    required this.ilce,
    required this.mahalle,
    required this.sokak,
  });
}

void main() {
  Adres adres1 = Adres(
    acikAdres: "açık adres",
    il: "Antalya",
    ilce: "Alanya",
    mahalle: "Mahmutlar",
    sokak: "sokak",
  );

  var ali = Insan(
    ad: "Ali",
    soyAd: "veli",
    adres: adres1,
  );

  var veli = Insan(
    ad: "Veli",
    soyAd: "aa",
    adres: Adres(
      acikAdres: "acikAdres",
      il: "il",
      ilce: "ilce",
      mahalle: "mahalle",
      sokak: "sokak",
    ),
  );
}
