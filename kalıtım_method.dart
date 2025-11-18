void main(List<String> args) {
  User user = User();
  user.girisYap();
  NormalUser normalUser = NormalUser();
  normalUser.davetet();
  normalUser.girisYap();

  ReadOnly readOnly = ReadOnly();
  readOnly.davetet();
  readOnly.makaleoku();

  adminUser Admin = adminUser();
  Admin.girisYap();
  Admin.toplamKullaniciSayisi();

  print(User.sayilar);
}

class User {
  String mail = '';
  String password = '';

  static int sayilar =
      0; //Static Sayesinde Sınıftan Çıkarıp Nesneye Bağlarız Daha Tercih Edilebilir
  void girisYap() {
    print('Lütfen Giriş Yapın');
  }
}

// Kalıtım sayesinde bir bütünden özele giriş yapıyorum

class NormalUser extends User {
  // EXTENDS SAYESİNDE BİR CLASA İÇER GİRMEDEN DİĞERİNİ ALABİLİRİZ
  void davetet() {}
  @override
  void girisYap() {
    //OVERRİDE SAYESİNDE İSTENİLEN VERİYİ BURAYA ÇEKEBİLİRİZ
    super.girisYap();
  }
}

class ReadOnly extends NormalUser {
  void makaleoku() {
    print('Sadece Makale Okuma Yetkiniz Var');
  }

 /*  @override
  void girisYap() {
    // TODO: implement girisYap
    super.girisYap();
  } */
}

class adminUser extends User {
  void toplamKullaniciSayisi() {
    print('Admin sizsiniz');
  }

  /* @override
  void girisYap() {
    // TODO: implement girisYap
    super.girisYap();
  } */
}
