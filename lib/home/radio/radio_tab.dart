import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:islami/home/radio/radio-item.dart';
import 'package:islami/home/radio/radio_response.dart';
import 'package:audioplayers/audioplayers.dart';


class RadioTab extends StatefulWidget {


  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late Future<RadioResponse> radioResponseFuture ;
  late  AudioPlayer audioPlayer ;

  @override
  void initState() {
    super.initState();
    radioResponseFuture = getRadios();
    audioPlayer = AudioPlayer();
  }



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width ;
    return FutureBuilder<RadioResponse>(
      future: radioResponseFuture,
        builder: (context, snapshot){
        if(snapshot.hasData){
          List<Radios>radios =snapshot.data?.radios ?? [];
          return Column(
            children: [
              Expanded(child: Image(image: AssetImage('assets/images/radio_image.png'))),
              Expanded(child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  width: width,
                  child: Center(
                    child: SizedBox(
                      width: width*.9,
                        child: RadioItem(radios[index],audioPlayer)),
                  ),
                ),
                itemCount: radios.length,
                scrollDirection: Axis.horizontal,
                physics:PageScrollPhysics(),
              )
              ),
            ],
          );
        }else if (snapshot.hasError){
          return Center(child: IconButton(
            onPressed: () {
              radioResponseFuture = getRadios();
            },
            icon: Icon(Icons.refresh),
          ),);
        }else {
          return Center(child: CircularProgressIndicator(),);
        }

        },
    );
  }

  Future<RadioResponse> getRadios () async{
    var uri = Uri.parse('https://api.mp3quran.net/radios/radio_arabic.json');
    var response = await http.get(uri);
    var json = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode == 200 ){
      return RadioResponse.fromJson(json) ;
    }else
      {
        throw Exception('failed to load radio ');
      }


  }
}
