import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  String texto = 'Voce clicou $contador vezes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Exemplo'),
        ),
        body: Center(
          child: Text(texto),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (contador < 10) {
              setState(() {
                contador++;
              });
            } else {
              setState(() {
                texto = 'Voce atingiu o limite de 10 cliques!';
              });
            }
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
