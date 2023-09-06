import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_deatils.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;
  VerseWidget(this.content,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        child: Text('$content {${index+1}},',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodyText1,));
  }
}
