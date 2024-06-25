void main() {
  //Yaş konrolü
  //13 ve  küçükse çocuk
  //18 ise ergen
  //18 - 65 den arası yetişkin (65 dahil değil)
  // 65 ve üstü ise yaşlı

  int age = 90;
  if (age >= 0 && age <= 13) {
    print("çocuk");
  } else if (age > 13 && age < 18) {
    print("ergen");
  } else if (age == 18) {
    print("genç");
  } else if (age < 65 && age > 18) {
    print("yetişkin");
  }
  //  else if (age >= 65) {
  //   print("yaşlı");
  // }
  else {
    print("yaşlı");
  }
}
