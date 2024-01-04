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
  bool switchControl = false;
  bool checkBoxControl = false;
  int radioDeger = 0;
  bool progress = false;
  double slider = 0.0;

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
                decoration: const InputDecoration(hintText: "Gelen veri"),
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
                child: const Text("Veriyi Al")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        resimadi = "sutlac.png";
                      });
                    },
                    child: const Text("Resim 1")),
                Image.network(
                    "http://kasimadalan.pe.hu/yemekler/resimler/$resimadi",
                    width: 200,
                    height: 200),
                TextButton(
                    onPressed: () {
                      setState(() {
                        resimadi = "pizza.png";
                      });
                    },
                    child: const Text("Resim 2")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: SwitchListTile(
                    value: switchControl,
                    title: const Text("Dart"),
                    onChanged: (value) {
                      setState(() {
                        switchControl = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: 200,
                  child: CheckboxListTile(
                    value: checkBoxControl,
                    title: const Text("Flutter"),
                    onChanged: (c) {
                      setState(() {
                        checkBoxControl = c!;
                      });
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: 200,
                  child: RadioListTile(
                    title: Text("İstanbul"),
                    value: 3,
                    groupValue: radioDeger,
                    onChanged: (value) {
                      setState(() {
                        radioDeger = value!;
                        print(radioDeger);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 150,
                  child: RadioListTile(
                    title: Text("Ankara"),
                    value: 1,
                    groupValue: radioDeger,
                    onChanged: (value) {
                      setState(() {
                        radioDeger = value!;
                        print(radioDeger);
                      });
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        progress = true;
                      });
                    },
                    child: const Text("Başla")),
                Visibility(
                  visible: progress,
                  child: CircularProgressIndicator(

                    color: Colors.black,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        progress = false;
                      });
                    },
                    child: const Text("Dur")),
              ],
            ),
            Slider(value: slider, divisions: 11,max: 100,min: 0, onChanged: (value) {
              setState(() {
                slider = value;
                print(value.toInt());
              });
            },),
            Text("${slider.toInt()}"),

            ElevatedButton(
                onPressed: () {
                  print(
                      "Switch'in durumu $switchControl Checkbox'ın durumu $checkBoxControl"); //20:25
                },
                child: Text("Göster"))
          ],
        ),
      ),
    );
  }
}
