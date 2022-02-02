import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void tocarSom(String nota) {
      final player = AudioCache();
      player.play(nota);
    }

    Expanded criarBotao({String nota, Color cor}) {
      return Expanded(
        child: TextButton(
          onPressed: () {
            tocarSom(nota);
          },
          child: null,
          style: TextButton.styleFrom(backgroundColor: cor),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(nota: "nota1.wav", cor: Colors.teal),
              criarBotao(nota: "nota2.wav", cor: Colors.blue),
              criarBotao(nota: "nota3.wav", cor: Colors.yellow),
              criarBotao(nota: "nota4.wav", cor: Colors.red),
              criarBotao(nota: "nota5.wav", cor: Colors.grey),
              criarBotao(nota: "nota6.wav", cor: Colors.purple),
              criarBotao(nota: "nota7.wav", cor: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
