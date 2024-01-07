import 'package:flutter/material.dart';

import '../../data/entity/kisiler.dart';

class DetaySayfa extends StatefulWidget {
  Kisiler kisi;

  DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  TextEditingController KisiAdiController = TextEditingController();
  TextEditingController KisiTelNoController = TextEditingController();

  Future<void> guncelle(int kisi_id, String kisi_adi, String kisi_tel) async {
    print(
        "Kişinin id'si ${kisi_id} Kişinin adı ${kisi_adi} kişinin adı ${kisi_tel}");
  }

  @override
  void initState() {
    var k1 = widget.kisi;
    KisiAdiController.text = k1.kisi_adi;
    KisiTelNoController.text = k1.kisi_tel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detay sayfa"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: KisiAdiController,
                decoration: const InputDecoration(hintText: "Kişinin adı"),
              ),
              TextField(
                controller: KisiTelNoController,
                decoration:
                    const InputDecoration(hintText: "Kişinin telefon numarası"),
              ),
              ElevatedButton(
                  onPressed: () {
                    guncelle(widget.kisi.kisi_id, KisiAdiController.text, KisiTelNoController.text); // videoyu 5:33'e kadar tekrar anlayıp devam et
                  },
                  child: const Text("Güncelle")),
            ],
          ),
        ),
      ),
    );
  }
}
