import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_deatils.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/sura_deatils.dart';

class HadethName extends StatelessWidget {
  Hadeth hadeth ;
  HadethName(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDeatils.routeName,
        arguments: hadeth );

      },
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          child: Text(hadeth.title,
            style: Theme.of(context).textTheme.headline5,)),
    );
  }
}
