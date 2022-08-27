import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/verse_widget.dart';

class SuraDeatils extends StatefulWidget {
static const String routeName = 'sura-deatils';

  @override
  State<SuraDeatils> createState() => _SuraDeatilsState();
}

class _SuraDeatilsState extends State<SuraDeatils> {
List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDeatilsArgs;
    if(verses.isEmpty)
    readFile(args.index);
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
          body:verses.isEmpty  ? Center(child: CircularProgressIndicator()) :
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: ListView.separated
              (itemBuilder: (_, index){
              return VerseWidget(verses[index], index);
            },itemCount:verses.length,
                separatorBuilder: (BuildContext _, int
                index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 60),
                color: Theme.of(context).primaryColor,
                height:2 ,
                width: double.infinity,

              );
            } ),
          ),

        ));
  }
  void readFile(int index) async {
   String content = await rootBundle.loadString('assets/files/${index+1}.txt');
   List<String>lines= content.split('\n');
   verses = lines ;
   setState(() {});
  }
}
class SuraDeatilsArgs {
  int index ;
  String title ;
  SuraDeatilsArgs(this.index,this.title);

}
