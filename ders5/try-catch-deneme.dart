void main() {
  try {
    // hata olabilecek kodları içerine yazabilirisiniz !
    int sonuc = 10 ~/ 0;
    print(sonuc);
  } catch (e) {
    //hata patlatırsa burada ele alabilirisniz !
    print("Hata oldu !");
    print(e);
  } finally {
    print("bu işlemi tamamladım !");
  }

  // int sonuc = 10 ~/ 0.0;  //hata verir !
  //   print(sonuc);
}
