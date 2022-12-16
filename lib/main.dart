import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophone());

class xylophone extends StatelessWidget {
  
  void playSound(int n){
    final player = new AudioPlayer();
    player.play(AssetSource('note$n.wav'));
  }
  Expanded createButton(int audio, Color col){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: col,
          textStyle: const TextStyle(fontSize: 20),
          foregroundColor: Colors.black,
        ),
        child: const Text(''),
        onPressed: () {
          playSound(audio);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            createButton(1,Colors.deepOrangeAccent),
            createButton(2,Colors.white70),
            createButton(3,Colors.deepPurple),
            createButton(4,Colors.teal),
            createButton(5,Colors.pinkAccent),
            createButton(6,Colors.orange),
            createButton(7,Colors.cyan)
          ],
        ),
      ),
    ));
  }
}
