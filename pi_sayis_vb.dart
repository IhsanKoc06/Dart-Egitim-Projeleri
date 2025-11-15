void main(List<String> args) {
  int toplam = toplamHesapla(5, ciftMi: true);
  print(toplam);

  double alan = alanhesapla(27.0);
  print(alan);
}

double alanhesapla(double yaricap, [double piSayisi = 3.14]){
  return yaricap*yaricap*piSayisi;
}

int toplamHesapla(int sayi, {bool ciftMi = true}) {
  int toplam = 0;
  for (int i = 0; i < sayi; i++) {
    if (ciftMi == true) {
      if (i % 2 == 0) {
        toplam = toplam + i;
      }
    } else {
      if (i % 2 == 0) {
        toplam = toplam + i;
      }
    }
  }
  return toplam;
}
