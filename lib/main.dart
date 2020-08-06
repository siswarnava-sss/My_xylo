import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audio_recorder/audio_recorder.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundnum)
  {
    final player=AudioCache();
    player.play('note$soundnum.wav');
  }

  Expanded buildkey({Color color, int soundnum})
  {
   return Expanded(
      child: FlatButton(
          color: color,
          onPressed: (){
        playsound(soundnum);

      },
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                onPressed: (){

                },
              ),
             buildkey(color: Colors.red,soundnum: 1),
             buildkey(color: Colors.green,soundnum: 2),
             buildkey(color: Colors.blue,soundnum: 3),
             buildkey(color: Colors.yellow,soundnum: 4),
             buildkey(color: Colors.teal,soundnum: 5),
             buildkey(color: Colors.pink,soundnum: 6),
              buildkey(color: Colors.orangeAccent,soundnum: 7),
          ],
          ),
        ),
      ),
    );
  }
}
