import 'package:flutter/material.dart';
void main(){
  runApp(const anaSayfa());
}


class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),appBarTheme: AppBarTheme(backgroundColor: Colors.greenAccent)),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {

              }, child: const Text("Git A")),
              ElevatedButton(onPressed: () {

              }, child: const Text("Git B"))
            ],
          ),
        ),
        appBar: AppBar(title: const Text("Ödev 2"),centerTitle: true,backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      ),
    );
  }
}
