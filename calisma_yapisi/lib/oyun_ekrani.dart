import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

class Oyunekrani extends StatefulWidget {
  const Oyunekrani({super.key});

  @override
  State<Oyunekrani> createState() => _OyunekraniState();
}

class _OyunekraniState extends State<Oyunekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun ekranı"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani(),));
            }, child: const Text("Bitti")),
          ],
        ),
      ),
    );
  }
}
// 10:45