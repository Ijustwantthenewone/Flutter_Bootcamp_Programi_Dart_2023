import 'package:flutter/material.dart';

void main() { //13:42
  runApp(v1());
}

class v1 extends StatelessWidget {
  const v1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent)),
      debugShowCheckedModeBanner: false,
      home: anasayfa(),
    );
  }
}

class anasayfa extends StatefulWidget {
  const anasayfa({super.key});

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {

  String islem = "0";
  String ayrisma = "";
  var kontrolcu = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
  ayrisma = islem.split("222").toString();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(islem, style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "0";
                        print(islem);
                        print(ayrisma);
                      });
                    },
                    child: Text("0")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "1";
                        print(islem);
                      });
                    },
                    child: Text("1")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "2";
                        print(islem);
                      });
                    },
                    child: Text("2")),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "3";
                        print(islem);
                        setState(() {});
                      });
                    },
                    child: Text("3")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "4";
                        print(islem);
                        setState(() {});
                      });
                    },
                    child: Text("4")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "5";
                        print(islem);
                        setState(() {});
                      });
                    },
                    child: Text("5"))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "6";
                        print(islem);
                        setState(() {});
                      });
                    },
                    child: Text("6")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "7";
                        print(islem);
                        setState(() {});
                      });
                    },
                    child: Text("7")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "8";
                        print(islem);
                        setState(() {});
                      });
                    },
                    child: Text("8")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        islem = islem + "9";
                        print(islem);
                        setState(() {});
                      });
                    },
                    child: Text("9"))
              ],
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 100)),
                onPressed: () {

                },
                child: Text("Topla")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 100)),
                onPressed: () {
                  setState(() {
                    islem = "0";
                  });
                },
                child: Text("Sıfırla"))
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Hesap makinesi"),
        centerTitle: true,
      ),
    );
  }
}
