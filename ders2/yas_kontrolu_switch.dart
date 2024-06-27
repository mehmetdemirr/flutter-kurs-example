void main() {
  //Yaş konrolü
  //13 ve  küçükse çocuk
  //18 ise ergen
  //18 - 65 den arası yetişkin (65 dahil değil)
  // 65 ve üstü ise yaşlı

  int age = 18;

  switch (age) {
    case 18:
      print("yaşınız 18 . Ergensiniz !");
      break;
    default:
      if (age <= 13 && age >= 0) {
        print("çocuksunuz");
      } else if (age > 18 && age < 65) {
        print("yetişkin");
      } else {
        print("yaşlısınız");
      }
  }
}
