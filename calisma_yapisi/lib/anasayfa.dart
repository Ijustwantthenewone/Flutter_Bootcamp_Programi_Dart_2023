import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayi = 0;

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
            Text("Sonuç :$sayi"),
            ElevatedButton(onPressed: () {
              setState(() {
                sayi-=1;
              });
            }, child: const Text("Tıkla"))
          ],
        ),
      ),
    );
  }
}
