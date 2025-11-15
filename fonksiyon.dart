void main(List<String> args) {
  cevreyibul(); 
  alanhesapla(5, 10);
  int hacim=hacimhesapla(5, 10, 70);
  print('hacim $hacim');
}
hacimhesapla(int en, int boy, int yuksekilk){
  return en * boy * yuksekilk;
}
alanhesapla(int en, int boy) {
  print('en $en ve boy $boy olanın alanı ${en * boy}');
}

cevreyibul() {
  int sayi = 93, sayi2 = 72;
  int cevre = (sayi + sayi2) * 2;
  print(cevre);
}
