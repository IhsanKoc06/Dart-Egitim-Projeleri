import 'dart:io';

void main(List<String> args) async {
  File dosya = File('data.txt');

  dosyayYaz(dosya);

  dosyadanoku(dosya);

  print('\nDosya işlemleri tamamlandı.');
}

void dosyadanoku(File dosya) async {
  print('--- Dosya İçeriği Okunuyor ---');
  var dosyaicerigi = await dosya.readAsLines();
  dosyaicerigi.forEach((satir) {
    print(satir);
  });
}

void dosyayYaz(File dosya) async {
  print('--- Dosyaya Yazılıyor ---');
  await dosya.writeAsString('Büşrayı Çok Seviyorum\n', mode: FileMode.append);
  await dosya.writeAsString('İhsanda Onu Çok Seviyor\n', mode: FileMode.append);
  await dosya.writeAsString('Onlarda Birini Sver\n', mode: FileMode.append);
  await dosya.writeAsString('Çigdemde Akife Aşıktır\n', mode: FileMode.append);
  await dosya.writeAsString('Akifde Çigdeme\n', mode: FileMode.append);
}
