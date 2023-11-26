import 'package:flutter/material.dart';
import 'package:tasarim/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key,});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
        title:  Text("Pizza",style: TextStyle(color: renk2,fontFamily: "benimfontum",fontSize: 50)),
        backgroundColor: renk1,
      ),
      body: Row(//10:21
        // main exende cross dikeyse yatay yataysa dikey
        children: [
          Container(
            width: 111,
            height: 111,
            color: Colors.red,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.limeAccent,
          )
        ],
      )
    );
  }
}
