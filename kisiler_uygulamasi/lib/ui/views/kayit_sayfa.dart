import 'package:flutter/material.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  TextEditingController KisiAdiController = TextEditingController();
  TextEditingController KisiTelNoController = TextEditingController();

   Future<void> kaydet(String kisi_adi,String kisi_tel) async{
     print("Kişinin adı ${kisi_adi} kişinin adı ${kisi_tel}");
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt sayfa"),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: KisiAdiController,
                decoration: const InputDecoration(hintText: "Kişinin adı"),
              ),
              TextField(
                controller: KisiTelNoController,
                decoration: const InputDecoration(hintText: "Kişinin telefon numarası"),
              ),
              ElevatedButton(onPressed: () {
                kaydet(KisiAdiController.text, KisiTelNoController.text);
              }, child: const Text("Kaydet")),
            ],
          ),
        ),
      ),
    );
  }
}
