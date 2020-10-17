import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main(){
  runApp(EasyPiano());
}
class EasyPiano extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                playnotes(1, Colors.tealAccent, 'Note 1'),
                playnotes(2, Colors.blue , 'Note 2'),
                playnotes(3, Colors.pinkAccent ,'Note 3'),
                playnotes(4, Colors.indigo , 'Note 4'),
                playnotes(5, Colors.green , 'Note 5'),
                playnotes(6, Colors.yellowAccent, 'Note 6'),
                playnotes(1, Colors.orangeAccent , 'Note 7'),
              ],
            ),
          ),
        ),
    );
  }
  Expanded playnotes(int noteNum , color , noteName){
    return Expanded(
      child: Container(
      child: FlatButton(
        onPressed: (){
          final player = AudioCache();
          player.play('note$noteNum.wav');
        },
        child: Text('$noteName'),
      ),
      color: color,
      )
    );
  }
}