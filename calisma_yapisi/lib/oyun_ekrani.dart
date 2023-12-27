import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';
import 'kisiler.dart';

class Oyunekrani extends StatefulWidget {
  Kisiler k1;
  Oyunekrani({required this.k1});

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
            Text("${widget.k1.ad} ${widget.k1.yas} ${widget.k1.boy} ${widget.k1.bekar}"), //16:41
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
