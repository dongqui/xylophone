import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () async {
              final player = AudioPlayer().audioCache;
              await player.load('note1.wav');
            },
            child: Text('test'),
          ),
        ),
      ),
    ));
  }
}
