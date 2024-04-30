import 'package:cp2_myappfavorites/contato.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatefulWidget {
  ListaPage({
    Key ? key
  }): super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State < ListaPage > {
  int contador = 0;

  List < Contato > contatos = [
    Contato('John Doe', 'john_doeoe@gmail.com', 'images/john_doe.jpg'),
    Contato('Alice O. Austin', 'AliceOAustin@rhyta.com', 'images/alice_austin.jpg'),
    Contato('Douglas R. Broadway', 'DouglasRBroadway@dayrep.com', 'images/douglas_broadway.jpg'),
    Contato('Gabriel A. Paterra', 'gabriel.paterra@gmail.com', 'images/gabriel_paterra.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 5, 191),
        title: Text(
          'Contatos Favoritos $contador',
          style: TextStyle(color: Colors.white), ),
      ),
      body: ListView.separated(
        itemCount: contatos.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(contatos[index].imagemUrl),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: IconButton(
              icon: contatos[index].favoritado ?
              Icon(Icons.favorite, color: Colors.red) :
              Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  contatos[index].favoritado = !contatos[index].favoritado;
                  contador = contatos.where((contato) => contato.favoritado).length;
                });
              },
            ),
          );
        },
      ),
      //versao com ListView.builder inves de .separated com separatorBuilder
      /*body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(contatos[index].imagemUrl),
              // child: Text(contatos[index].nome[0]),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: IconButton(
              icon: contatos[index].favoritado
                  ? Icon(Icons.favorite, color: Colors.red)
                  : Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  contatos[index].favoritado = !contatos[index].favoritado;
                  contador = contatos.where((contato) => contato.favoritado).length;
                });
              },
            ),
          );
        },
      ), */
    );
  }
}