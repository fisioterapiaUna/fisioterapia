import 'package:fisioterapia/Lista.dart';
import 'package:flutter/material.dart';
import 'package:fisioterapia/layout/Layout.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<Home> {
  int indice = 0;  

  corTitulo(indice) {
    if (indice % 2 == 0) {
      return Color.fromRGBO(18, 65, 147, 1);
    } else {
      return Color.fromRGBO(251, 185, 26, 1);
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(219, 219, 219, 1),
        appBar: Cabecalho().layoutCabecalho(),
        drawer: Menu().layoutMenu(),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                          width: double.infinity,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                color: Colors.black12,
                                child: Image.asset("bandeira.png",
                                    fit: BoxFit.fill),
                              ),
                              Container(
                                width: 330,
                                height: 40,
                                color: corTitulo(2),
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "POR QUE A TERMINOLOGIA E IMPORTANTE ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            'aaaaaaaccccccccsxccccccccccccccccccccccccccccccccccccccaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar:Rodape().layoutRodape(context, indice, setState,"/Lista")
      ),
    );
  }
}
