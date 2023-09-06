import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/verse_widget.dart';

class HadethDeatils extends StatefulWidget {
static const String routeName = 'hadeth-deatils';

  @override
  State<HadethDeatils> createState() => _HadethDeatilsState();
}

class _HadethDeatilsState extends State<HadethDeatils> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/background.png')
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title:Text (args.title),
          ),
          body:
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Text(
                args.content,
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.headline5,
              )
            ),
          ),

        ));
  }
}
