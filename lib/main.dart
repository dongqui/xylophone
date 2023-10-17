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

  Expanded buildKey(int noteNumber, Color color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1, Colors.red),
            buildKey(2, Colors.orange),
            buildKey(3, Colors.yellow),
            buildKey(4, Colors.green),
            buildKey(5, Colors.blue),
            buildKey(6, Colors.indigo),
            buildKey(7, Colors.purple),
          ],
        ),
      ),
    ));
  }
}
