void main(List<String> args) {
  int carpim = saylariCarp(sayi3: 12, sayi2: 11, ahmet1: 10);
  print(carpim);

  int oplam = sayilariTopla(12, 17,17);
  int topla2 = sayilariTopla(16, 18, 16);
  print(topla2);
  print(oplam);
}

//Gerekli Parametre
int sayilariTopla(int s1, int s2, int s3) {
  return s1 + s2 + s3;
}

// Opsiyonel Parametre [] Koşeli Parantez Sayesinde Opsiyonel Parametre Kabull Edilesmini Sağlar
int sayilariTopl(int s1, int s2, [int s3 = 0]) {
  return s1 + s2 + s3;
}

//Named Parametre İsimli Parametre

int saylariCarp({int ahmet1 = 12, int sayi2 = 11, int sayi3 = 13}) {
  return ahmet1 * sayi2 * sayi3;
}
