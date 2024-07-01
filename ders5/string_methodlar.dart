void main() {
  String cumle = "Merhaba Nasılsın  ?";

  String metin = "merhaba,deneme,farklı,getir,top,elma";

  if (cumle.isEmpty) {
    print("bu cümle boş ");
  } else {
    print("bu cümle boş değil");
  }

  print("Bu stringin uzunluğu(lenght): ${cumle.length}");

  if (cumle.contains("?")) {
    print("bu bir soru cümlesi");
  } else {
    print("bu bir soru cümlesi değildir");
  }

  String cumleninParcasi = cumle.substring(0, 7);

  print("ilk 6 karakter :" + cumleninParcasi);

  print("normal : $cumle");
  print("lower : ${cumle.toLowerCase()}");
  print("upper : ${cumle.toUpperCase()}");

  List<String> kelimeListesi = metin.split(",");

  List<String> kelimeler = cumle.split(" ");

  kelimeListesi.forEach((element) {
    print(element);
  });

  for (int i = 0; i < kelimeler.length; i++) {
    if (kelimeler[i].isNotEmpty) {
      print("${i + 1}. kelime : ${kelimeler[i]}");
    }
  }

  String userName = " mehmet ";
  String password = " 123456 ";

  print("Username :${userName.trim()}");
  print("Password :${password.trim()}");

}
