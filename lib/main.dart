import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed: () {
                  playSound(1);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),
                ),
                onPressed: () {
                  playSound(2);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                ),
                onPressed: () {
                  playSound(3);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  playSound(4);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.teal),
                ),
                onPressed: () {
                  playSound(5);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                ),
                onPressed: () {
                  playSound(6);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple),
                ),
                onPressed: () {
                  playSound(7);
                },
              ),
            ),
          ],
        )

            //  TextButton(
            //   style: TextButton.styleFrom(
            //       foregroundColor: Colors.blue),
            //   onPressed: () {
            //     final player = AudioPlayer();
            //     player.play(AssetSource('note1.wav'))
            //   },
            //  child: Text('click'),
            ),
      ),
    );
  }
}
