void main() {
  //double to int
  // 56.5  => 56
  double sayi1 = 56.5;
  int sayi2 = sayi1.toInt();
  print("sayi1 : $sayi1");
  print("sayi2 : $sayi2"); //56

  //int to double
  int sayi3 = 10;
  print("sayi3 : $sayi3");
  double sayi4 = sayi3.toDouble();
  print("sayi4 : $sayi4"); // 10.0

  //int to String
  int sayi5 = 23;
  // print("sayi5 : $sayi5");
  print("sayi5 : " + sayi5.toString());

  //String to int
  String sayisalMetin = "10m";
  // int? sayi6 = int.parse(sayisalMetin);
  int? sayi6 = int.tryParse(sayisalMetin);
  print("sayi 6 :" + sayi6.toString());
  print((sayi6 ?? 0) * 10);
}
