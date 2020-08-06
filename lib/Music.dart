import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

typedef void OnError(Exception exception);

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {

  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
  String localFilePath;

  Widget _tab(List<Widget> children) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: children
              .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
              .toList(),
        ),
      ),
    );
  }


  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
        minWidth: 48.0,
        child: RaisedButton(child: Text(txt), onPressed: onPressed));
  }


  Widget localAsset() {
    return _tab([
      _btn('Play', () => audioCache.play('audio.mp3'))
    ]);
  }



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('YO YO !!!'),
          backgroundColor: Colors.lightGreen,
        ),
        backgroundColor: Colors.yellow,
        body: TabBarView(
          children: <Widget>[
            localAsset(),
            Text(
              'keno cholchhe na jaanina',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
              ),
            )
          ]
        ),
      ),
    );
  }
}

  
  

 
      


