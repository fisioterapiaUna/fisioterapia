import 'package:flutter/material.dart';

class Lista extends StatefulWidget{
  @override
  ListaState createState()=>ListaState();
}

class ListaState extends State<Lista>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Deus e fiel"),
        ),
        body: Container(
          child: Text("Deus e fiel"),
        ),
      ),
    );
  }
}