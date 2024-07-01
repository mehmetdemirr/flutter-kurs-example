enum Status {
  acik,
  kapali,
}

extension StatusExtension on Status {
  bool degerDon() {
    if (this == Status.acik) {
      return true;
    }
    return false;
  }
}

void main() {
  var status = Status.kapali;
  print(status.degerDon());
  // int sayi = 5;
  // sayi.degerDon();  //erişemeyiz !
}


