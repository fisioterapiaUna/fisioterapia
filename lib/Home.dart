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
                  height: 200,    
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
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
                                color: corTitulo(1),
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "POR QUE A TERMINOLOGIA E IMPORTANTE ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900
                                  ),
                                ),
                              )
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            'aaaaaaaccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccsxccccccccccccccccccccccccccccccccccccccaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.all(1),                     
                        child: Column(                      
                          crossAxisAlignment: CrossAxisAlignment.end,                          
                          children: [
                            RaisedButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.remove_red_eye,color: Color.fromRGBO(80, 80, 80, 1),),
                              label: Text("ver mais"),
                              color: Colors.white,
                              elevation: 0, 
                                                         
                            )
                          ],
                        ),
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
