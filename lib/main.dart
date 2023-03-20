// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKeys(Colors.red, "audios/note1.wav"),
            buildKeys(Colors.orange, "audios/note2.wav"),
            buildKeys(Colors.yellow, "audios/note3.wav"),
            buildKeys(Colors.green, "audios/note4.wav"),
            buildKeys(Colors.teal, "audios/note5.wav"),
            buildKeys(Colors.blue, "audios/note6.wav"),
            buildKeys(Colors.purple, "audios/note7.wav"),
          ],
        ),
      ),
    );
  }
}

Widget buildKeys(Color color, String audio) {
  return Expanded(
    child: Container(
      color: color,
      child: TextButton(
          onPressed: () {
            final player = AudioCache();
            player.play(audio);
          },
          child: Text('')),
    ),
  );
}
