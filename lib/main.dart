import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioCache audioCache = AudioCache();

  void playSound(int number){
    audioCache.play('audios/note$number.wav');
  }

  Widget buildKey ({Color color, int number}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
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
                buildKey(color: Colors.redAccent, number: 1),
                buildKey(color: Colors.orangeAccent, number: 2),
                buildKey(color: Colors.yellow, number: 3),
                buildKey(color: Colors.green, number: 4),
                buildKey(color: Colors.blue, number: 5),
                buildKey(color: Colors.deepPurple, number: 6),
                buildKey(color: Colors.purpleAccent, number: 7),
              ],
            )
          )),
    );
  }
}


