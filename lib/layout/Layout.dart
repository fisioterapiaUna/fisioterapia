import 'package:flutter/material.dart';

class Menu {
    layoutMenu(){
      return Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration:BoxDecoration(
                    color: Color.fromRGBO(1, 115, 188, 1)
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
        );
    }
}

class Cabecalho {
  layoutCabecalho(){
    return AppBar(
          backgroundColor: Color.fromRGBO(1, 115, 188, 1),
        );
  }
}

class Rodape {  
  layoutRodape(context,indice,setState,rota){   
    return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_library),
              label: "informações",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_movies_rounded), label: "videos"),
          ],
          currentIndex: indice,
          onTap: (i) => {
            setState(() {
              indice = i;
            }),
            Navigator.pushNamed(context,rota)
          },
          selectedItemColor: Color.fromRGBO(1, 115, 188, 1),
        );
  }
}