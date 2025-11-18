void main(List<String> args) {
  Ogrenci ihsan = Ogrenci();
  ihsan.adi = 'ihsan';
  ihsan.mezunmu = true;
  ihsan.ogrenicNo = 1089;
  print(ihsan.ogrenicNo);
  print(ihsan.adi);
  print(ihsan.mezunmu);

  Araba bir_alti = Araba('audi', 2020);
  bir_alti.marka = 'AUDİ';
  bir_alti.modelYili = 2024;
  bir_alti.bilgilerisoyle();

  Araba iki_sifir_motor = Araba('Mercedes', 1999);
  iki_sifir_motor.bilgilerisoyle();

  Araba Hyundai = Araba.modelYilsiz('Hyundai');
  Hyundai.bilgilerisoyle();
}

class Ogrenci {
  int ogrenicNo = 0;
  String adi = '';
  bool mezunmu = false;
}

void dersCalis() {
  print('ögrenci ders çalışıyormu?');
}

class Araba {
  int? modelYili;
  String? marka;

  Araba(this.marka, this.modelYili) {
    print('Kurucu Metot Tetikelndi');
    if (this.modelYili! < 2000) {
      this.modelYili = 2000; //Böyle Tanımlamada Yapıp Kontrol Edebiliriz
    }
  }

  Araba.modelYilsiz(this.marka) {
    this.modelYili = 2025;
  }

  Arab(String ma, int yil) {
    print('Kurucu Metot Tetiklendi');
    /* this.modelYili=modelYili;    EGER DEĞİŞKENLER AYNI İSİMDE İSE BAŞLARINA THİS. EKLEMEMEİZ GEREKİYIOR DART BUNU ANLAMAZ
        this.marka=marka; */
    modelYili = yil; // YADA BURDAKİ GİBİ TANIMLAYABİLİRİZ
    marka = ma;
  }

  void bilgilerisoyle() {
    print(
      'Bu Araba Model Yılı $modelYili markası $marka',
    ); // Burdaki Kodun Ögrentisini Sonradan İşlenecek
  }
}
