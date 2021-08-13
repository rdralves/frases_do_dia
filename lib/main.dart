import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Não temas, Não temas",
    'O Senhor é o meu pastor!',
    "Tudo é possivel ao que crê!!!",
    "Chica, tudo certo ai???",
    "Bora TRANSAR!!!",
  ];
  var _fraseGerada = "Clique aqui para gerar uma nova frase";

  void _gerarFrase() {
    var _nummeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[_nummeroSorteado];
    });
  }

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  elevation: 15,
                  shadowColor: Colors.green),
              onPressed: _gerarFrase,
              child: Text(
                "Nova Frase",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _fraseGerada {}
