import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

class Oyunekrani extends StatefulWidget {
  String ad;
  int yas;
  double boy;
  bool bekar;

  Oyunekrani(
      {required this.ad,
      required this.yas,
      required this.boy,
      required this.bekar,
      super.key});

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
            Text("${widget.ad} ${widget.yas} ${widget.boy} ${widget.bekar}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SonucEkrani(),
                      ));
                },
                child: const Text("Bitti")),
          ],
        ),
      ),
    );
  }
}
// 10:45
