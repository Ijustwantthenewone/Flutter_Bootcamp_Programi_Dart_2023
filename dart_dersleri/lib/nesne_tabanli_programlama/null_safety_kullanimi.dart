void main(){
  String? isim;


  print(isim?.toUpperCase());



  if(isim != null){
    print(isim.toUpperCase());
  }else{
    print("Boş ileti");
  }
  print(isim!.toUpperCase());
}