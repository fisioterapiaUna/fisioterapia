import 'package:flutter/material.dart';
import 'package:fisioterapia/Lista.dart';
import 'package:fisioterapia/Home.dart';

void main() {
  runApp(Fisioterapia());
}

class Fisioterapia extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      routes: {"/Lista": (context) => Lista()},
      home:Home()
    );
  }
}
