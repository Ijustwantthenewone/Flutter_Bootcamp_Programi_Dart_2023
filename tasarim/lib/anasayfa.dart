import 'package:flutter/material.dart';
import 'package:tasarim/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({
    super.key,
  });

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Pizza",
              style: TextStyle(
                  color: renk2, fontFamily: "benimfontum", fontSize: 50)),
          backgroundColor: renk1,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Beef Cheese",
                style: TextStyle(
                    fontSize: 36, color: renk1, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset("resimler/iStock-1222455274.webp",width: 180,height: 100,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {},style: TextButton.styleFrom(backgroundColor: renk3), child: Text("Cheese",style: TextStyle(color: renk2),),),
                  TextButton(onPressed: () {},style: TextButton.styleFrom(backgroundColor: renk3), child: Text("Sausage",style: TextStyle(color: renk2),),),
                  TextButton(onPressed: () {},style: TextButton.styleFrom(backgroundColor: renk3), child: Text("Olivie",style: TextStyle(color: renk2),),),
                  TextButton(onPressed: () {},style: TextButton.styleFrom(backgroundColor: renk3), child: Text("Pepper",style: TextStyle(color: renk2),),),
                ],
              ),
            )
          ],
        ));
  }
}
