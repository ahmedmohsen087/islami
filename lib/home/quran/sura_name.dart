import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_deatils.dart';

class SuraName extends StatelessWidget {
  String title;
  int index;
  SuraName(this.index,this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDeatils.routeName,
        arguments: SuraDeatilsArgs(index, title));
      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          child: Text(title,
            style: Theme.of(context).textTheme.headline5,)),
    );
  }
}
