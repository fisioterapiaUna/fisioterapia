import 'package:fisioterapia/layout/Layout.dart';
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
        appBar:Cabecalho().layoutCabecalho(),
        drawer: Menu().layoutMenu(),
        body: Container(
          child: Text("Deus e fiel"),
        ),
        bottomNavigationBar: Rodape().layoutRodape(context, 1, setState,"/"),
      ),
    );
  }
}