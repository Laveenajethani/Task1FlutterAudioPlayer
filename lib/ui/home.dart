import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:file_picker/file_picker.dart';

myhome() {
  AudioCache audioCache = new AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer.logEnabled = true;

  playLocal() async {
    int result = await audioPlayer.play('audio/audio.wav', isLocal: true);
    if (result == 1) {
      print('played');
    } else {
      print('fail to play');
    }
  }

  pause() async {
    int result = await audioPlayer.pause();
    if (result == 1) {
      print('paused');
    }
  }

  stop() async {
    int result = await audioPlayer.stop();
    if (result == 1) {
      print('stoped');
    }
  }

  var mybody = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        /*Container(
          height: 40,
          width: 300,
          color: Colors.pink,
          child: RaisedButton(
            onPressed: () async {
              var path = await FilePicker.getFilePath(type: FileType.audio);
              print(path);
            },
            child: Text(
              'Load Audio File',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.pink,
          ),
          //margin: EdgeInsets.only(bottom: 30),
        ),
        */
        Container(
          height: 40,
          width: 300,
          color: Colors.pink,
          margin: EdgeInsets.only(top: 30, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.shuffle,
                    color: Colors.white,
                  ),
                  onPressed: null),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  onPressed: pause),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                  ),
                  onPressed: playLocal),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.white,
                  ),
                  onPressed: stop),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.loop,
                    color: Colors.white,
                  ),
                  onPressed: null),
              Spacer(),
            ],
          ),
        ),
      ],
    ),
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
          'https://raw.githubusercontent.com/Laveenajethani/Task1FlutterAudioPlayer/master/images/back.jpg',
        ),
      ),
    ),
  );
  var design = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink,
      title: Text("MusicPlayer"),
    ),
    body: mybody,
  );
  return design;
}
