import 'package:flutter/material.dart';

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  var tfcontroller = TextEditingController();
  String alinanVeri = "";
  String resimadi = "baklava.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Text(alinanVeri),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: tfcontroller,
                decoration: InputDecoration(hintText: "Gelen veri"),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    alinanVeri = tfcontroller.text;
                    print(alinanVeri);
                  });
                },
                child: Text("Veriyi Al")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        resimadi = "sutlac.png";
                      });
                    },
                    child: Text("Resim 1")),
                Image.network("http://kasimadalan.pe.hu/yemekler/resimler/$resimadi",width: 200,height: 200),
                TextButton(
                    onPressed: () {
                      setState(() {
                        resimadi = "pizza.png";
                      });
                    },
                    child: Text("Resim 2")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
