void main() {
  //Basit faiz hesapla ve yazdır
  // formül = > Faiz=Anapara× Faiz Oranı× Zaman
  // anapara => tam sayı olabilir . double | int
  // faiz => 0.05 double
  // zaman => yıl cinsinden  int | double

  double anapara = 1000.0;
  double faizOrani = 0.05;
  int yil = 5;

  double faizTutari = anapara * faizOrani * yil;

  double toplamPara = faizTutari + anapara;

  print("Faiz geliri : $faizTutari");
  print("Toplam Para : $toplamPara");
}
