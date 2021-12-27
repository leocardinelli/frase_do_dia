//This is a Dart app done in Flutter that generates a random sentence when button is clicked

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const MyHomePage(title: 'Frase do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
    '"A persistência é o caminho do êxito." Charles Chaplin',
    '"O insucesso é apenas uma oportunidade para recomeçar com mais inteligência." Henry Ford',
    '"Você precisa fazer aquilo que pensa que não é capaz de fazer." Eleanor Roosevelt',
    '"Na adversidade, uns desistem enquanto outros batem recordes." Ayrton Senna',
    '"Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado." Roberto Shinyashiki',
    '"Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo." Nemo vox',
    '"Conhece-te a ti mesmo e conhecerás o universo e os deuses." Sócrates',
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase aleatória:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Frase',
        child: const Icon(Icons.wb_sunny),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
