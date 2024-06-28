// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  Ev alininEvi = Ev(
    pencereSayisi: 4,
    kapiSayisi: 1,
    bahceVarMi: true,
  );
}

class Ev implements Info, Info2 {
  int pencereSayisi;
  int kapiSayisi;
  bool bahceVarMi;

  Ev({
    required this.pencereSayisi,
    required this.kapiSayisi,
    required this.bahceVarMi,
  });

  @override
  void info() {
    print("ev hakkında bilgi aldım");
  }

  @override
  int sayac = 0;

  @override
  void info2() {
    print("info2 interface bu fonksiyon geldi");
  }
}

abstract class Info {
  void info();
  int sayac = 0;
}

abstract class Info2 {
  void info2();
}

class Insan implements Info {
  bool gozlukluMu;
  Insan({
    required this.gozlukluMu,
  });

  @override
  void info() {
    print("insan hakkında bilgi aldım");
  }

  @override
  int sayac = 0;
}
