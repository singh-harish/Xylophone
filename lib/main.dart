import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int? n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey({int? note,Color? col}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(note);
        },
        child: Container(
          color: col,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildKey(note: 1,col: Colors.red),
                buildKey(note: 2,col: Colors.orange),
                buildKey(note: 3,col: Colors.yellow),
                buildKey(note: 4,col: Colors.green),
                buildKey(note: 5,col: Colors.teal),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
