void main(List<String> args) {
  /* List<int>sayilar=List<int>.filled(100,0);
  for (int i=0; i<sayilar.length;i++){
    sayilar[i]=Random().nextInt(101);
  }
  print(sayilar); */

  var bilgiler=Map<String,dynamic>();
  bilgiler['İşlemci Sayısı']=8;
  bilgiler['Ram Miktarı']='16GB';
  bilgiler['ssd_varmı']=true;
  
  var bilgiler2={
    'İşlemci Sayısı':8,
    'Ram Miktarı':'16GB',
    'ssd_varmı':false
  };
  print(bilgiler);
  print(bilgiler2);
  

for(var entry in bilgiler.entries){
  print('${entry.key}:${entry.value}');
}






}