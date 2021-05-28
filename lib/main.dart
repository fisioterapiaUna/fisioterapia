import 'package:flutter/material.dart';
import 'package:fisioterapia/Lista.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<Home> {
  int indice=0;
  lista(imagem, textoiInformativo) {
    return Container(
      width: double.infinity,
      height: 500,
      margin: EdgeInsets.all(10),
      color: Color.fromRGBO(118, 178, 178, 1),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.black12,
            child: Image.network(
              imagem,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              textoiInformativo,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: 200,
            child: RaisedButton(
              child: Text(
                "veja Mais",
                style: TextStyle(color: Colors.white),
              ),
              color: Color.fromRGBO(13, 110, 253, 1),
              onPressed: () {
                return null;
              },
            ),
          )
        ],
      ),
    );
  }

  selecionar(i){
      setState(() {
        indice=i;  
      });
  }

   corTitulo(indice) {
      if (indice % 2 == 0) {
        return Color.fromRGBO(252, 218, 95, 1);
      } else {
        return Color.fromRGBO(199, 229, 239, 1);
      }
    }

  rota(){
      try {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Lista(),));  
      } catch (e) {
        print("esse e o erro = $e");
      }
    }
  @override
  Widget build(BuildContext context) {  
    return MaterialApp(      
      home: Scaffold(        
        backgroundColor: Color.fromRGBO(219, 219, 219, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(118, 178, 178, 1),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration:BoxDecoration(
                    color: Color.fromRGBO(80, 138, 138, 1)
                  ),
                  accountName: Text('norberto'),
                  accountEmail: Text('norbertojunio@gmail.com'),
                  currentAccountPicture:CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("NF"),
                  )
              ),
              ListTile(
                leading: Icon(Icons.assessment),
                title:Text('Postar'),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){},
              )
            ],
          ),
        ),
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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.local_library), 
                label: "informações",                
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_movies_rounded), label: "videos"),
          ],
          currentIndex:indice,
          onTap:(i)=>{
            selecionar(i), 
            Navigator.push(context, MaterialPageRoute(builder: (context) => Lista())),                        
          },
          selectedItemColor: Color.fromRGBO(118, 178, 178, 1),
        ),
      ),
    );
  }
}

