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

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  tocarSom("nota1.wav");
                },
                child: null,
                style: TextButton.styleFrom(backgroundColor: Colors.green),
              ),
              TextButton(
                onPressed: () {
                  tocarSom("nota2.wav");
                },
                child: null,
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              ),
              TextButton(
                onPressed: () {
                  tocarSom("nota3.wav");
                },
                child: null,
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
              ),
              TextButton(
                onPressed: () {
                  tocarSom("nota4.wav");
                },
                child: null,
                style: TextButton.styleFrom(backgroundColor: Colors.red),
              ),
              TextButton(
                onPressed: () {
                  tocarSom("nota5.wav");
                },
                child: null,
                style: TextButton.styleFrom(backgroundColor: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  tocarSom("nota6.wav");
                },
                child: null,
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
              ),
              TextButton(
                onPressed: () {
                  tocarSom("nota7.wav");
                },
                child: null,
                style: TextButton.styleFrom(backgroundColor: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
