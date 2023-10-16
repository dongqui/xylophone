import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int noteNumber) async {
    final player = AudioPlayer().audioCache;
    await player.load('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                playSound(1);
              },
              child: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
            ElevatedButton(
              onPressed: () {
                playSound(2);
              },
              child: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
            ),
            ElevatedButton(
              onPressed: () {
                playSound(3);
              },
              child: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            ),
            ElevatedButton(
              onPressed: () {
                playSound(4);
              },
              child: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
            ),
            ElevatedButton(
              onPressed: () {
                playSound(5);
              },
              child: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
            ),
            ElevatedButton(
              onPressed: () {
                playSound(6);
              },
              child: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo)),
            ),
            ElevatedButton(
              onPressed: () {
                playSound(7);
              },
              child: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple)),
            ),
          ],
        ),
      ),
    ));
  }
}
