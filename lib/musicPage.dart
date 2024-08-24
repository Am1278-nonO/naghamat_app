
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';
import 'package:naghamat_app/shared/txt.dart';

class musicPage extends StatefulWidget{
  @override
  State<musicPage> createState() => _musicPageState();
}

class _musicPageState extends State<musicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: txt('نغمات', Colors.white, 20, true),
  backgroundColor: Colors.purple,
),
      backgroundColor: Colors.purple[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          buildMusicButton('Sumsuing Galaxy', Colors.red,1),
    Divider(height: 2,),
          buildMusicButton('Sumsuing Note', Colors.green,2),
          Divider(height: 2,),
          buildMusicButton('Nokia', Colors.black,3),
          Divider(height: 2,),
          buildMusicButton('iphone11', Colors.orangeAccent,4),
          Divider(height: 2,),
          buildMusicButton('WhatsApp', Colors.blueAccent,5),
          Divider(height: 2,),
          buildMusicButton('Sumsuing s7', Colors.purple,6),
          Divider(height: 2,),
          buildMusicButton('iphone 6', Colors.black,7),
        ],
      ),
    );
  }
}

Widget buildMusicButton(String text ,Color color,int numberMusic){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () async {

              final player = AudioPlayer();
              await player.setAsset('assets/music/music-$numberMusic.mp3');
              await player.play();
            }

        ,
          icon: Icon(Icons.music_note_outlined,size: 40,color:color),

          label:
          Text(
              '$text',style: TextStyle(
              fontSize: 20,
              color: color,
              fontWeight: FontWeight.w600,
            ),
            ),
          ),
      ],
    ),
  );


}
