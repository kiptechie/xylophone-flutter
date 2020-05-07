import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.green, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.blue, soundNumber: 4),
                buildKey(color: Colors.teal, soundNumber: 5),
                buildKey(color: Colors.purpleAccent, soundNumber: 6),
                buildKey(color: Colors.blueGrey, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: MaterialButton(
      onPressed: () {
        play(soundNumber);
      },
      color: color,
    ),
  );
}

void play(int noteNumber) {
  final player = AudioCache();
  player.play('note$noteNumber.wav');
}
