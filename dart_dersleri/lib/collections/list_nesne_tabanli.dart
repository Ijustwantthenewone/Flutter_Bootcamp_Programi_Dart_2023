import 'package:dart_dersleri/collections/ogrenciler.dart';

void main(){
  var o1 = Ogrenciler(no: 3, ad: "Mehmet", sinif: "9c");
  var o2 = Ogrenciler(no: 1, ad: "Ada", sinif: "4h");
  var o3 = Ogrenciler(no: 5, ad: "Samet", sinif: "1e");

  var ogrencilerListesi = <Ogrenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);

  for(var x in ogrencilerListesi){
    print("No ${x.no} Name ${x.ad} sinif ${x.sinif}");
  }


  print("---------------------------");
  //sorting
  Comparator<Ogrenciler> m1 = (a, b) => b.no.compareTo(a.no);
  ogrencilerListesi.sort(m1);

  for(var x in ogrencilerListesi){
    print("No ${x.no} Name ${x.ad} sinif ${x.sinif}");
  }

  Comparator<Ogrenciler> y1 = (a, b) => a.ad.compareTo(b.ad);
  ogrencilerListesi.sort(y1);

  for(var x in ogrencilerListesi){
    print("No ${x.no} Name ${x.ad} sinif ${x.sinif}");
  }

  //filtreleme

  12:21
}