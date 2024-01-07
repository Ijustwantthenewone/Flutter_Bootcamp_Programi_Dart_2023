import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/ui/views/anasayfa.dart';

void main() {
  runApp(evet());
}

class evet extends StatelessWidget {
  const evet({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}
