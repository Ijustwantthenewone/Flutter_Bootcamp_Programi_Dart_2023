import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayi = 0;
  bool kontrol = false;

  @override
  void initState() {
    //25:07
    print("initState çalıştı.");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Build çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç :$sayi"), //25:17
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayi += 1;
                  });
                },
                child: const Text("Tıkla")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Oyunekrani(
                                k1: Kisiler(
                                    ad: "ahmet",
                                    yas: 23,
                                    boy: 1.2,
                                    bekar: true),
                              ))).then((value) {
                    print("İts over");
                  });
                },
                child: const Text("")),
            Text("Merhaba"),
            Text("Merhaba"),
            Text("Merhaba"),
            ElevatedButton(onPressed: () {
              setState(() { //1:51
                
              });
            }, child: Text("Durum 1 (true)")),
            ElevatedButton(onPressed: () {
              setState(() {

              });
            }, child: Text("Durum 1 (false)"))
          ],
        ),
      ),
    );
  }
}
