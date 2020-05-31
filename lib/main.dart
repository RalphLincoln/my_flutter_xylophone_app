import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

Widget buildKey({Color color, int numb}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(numb);
      },
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildKey(color: Colors.red, numb: 1),
              buildKey(color: Colors.indigo, numb: 2),
              buildKey(color: Colors.brown, numb: 3),
              buildKey(color: Colors.deepOrange, numb: 4),
              buildKey(color: Colors.amber, numb: 5),
              buildKey(color: Colors.tealAccent, numb: 6),
              buildKey(color: Colors.purpleAccent, numb: 7)
            ],
          ),
        ),
      ),
    );
  }
}
