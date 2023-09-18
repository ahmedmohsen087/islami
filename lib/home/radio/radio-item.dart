import 'package:flutter/material.dart';
import 'package:islami/home/radio/radio_response.dart';
import 'package:audioplayers/audioplayers.dart';


class RadioItem extends StatefulWidget {
  Radios radio ;
  AudioPlayer audioPlayer ;
  RadioItem(this.radio,this.audioPlayer);

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {

  void play () async{
    await widget.audioPlayer.play(UrlSource(widget.radio.radioUrl!));
  }
  void pause () async{
    await widget.audioPlayer.pause();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.radio.name??''),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: play, icon: Icon(Icons.play_arrow)),
            IconButton(onPressed: pause, icon: Icon(Icons.pause)),


          ],
        )
      ],
    );
  }
}
