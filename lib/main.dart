import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xilòfon'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              teclaXilo(Colors.red, 1, 'Do'),
              teclaXilo(Colors.orange, 2, 'Re'),
              teclaXilo(Colors.yellow, 3, 'Mi'),
              teclaXilo(Colors.green, 4, 'Fa'),
              teclaXilo(Colors.teal, 5, 'Sol'),
              teclaXilo(Colors.blue, 6, 'La'),
              teclaXilo(Colors.purple, 7, 'Si'),
            ],
          ),
        ),
      ),
    );
  }

  Widget teclaXilo(Color color, int note, String nota) {
    return Expanded(
      child: FlatButton(
        child: Row(
          children: [
            Icon(
              Icons.queue_music_outlined,
              color: Colors.white,
              size: 30.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              '$nota',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$note.wav');
        },
      ),
    );
  }
}
