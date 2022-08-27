import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}
class _HadethTabState extends State<HadethTab> {
  List<Hadeth>hadethList = [];
  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty)
    readHadethFile();
    return
    hadethList.isEmpty? Center(child: CircularProgressIndicator()):
      ListView.separated(itemBuilder: (_,index){
      return HadethName(hadethList[index],) ;
    },itemCount:hadethList.length, separatorBuilder: (BuildContext _, int
    index) {return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      color: Theme.of(context).primaryColor,
      height:2 ,
      width: double.infinity,
    );  } ,
    );
  }
  void readHadethFile()async{
    String fileContent =await  rootBundle.loadString('assets/files/ahadeth'
        '.txt');
    List<Hadeth> ahdethOfFile =[];
    List<String> allHadeth = fileContent.trim().split('#');
    for(int i=0;i< allHadeth.length;i++){
      List<String>hadethLines=allHadeth[i].trim().split('\n');
      String title = hadethLines[0];
      if(title.isEmpty)continue;
      hadethLines.removeAt(0);
      String content = hadethLines.join('\n');
      Hadeth h = Hadeth(title, content);
      ahdethOfFile.add(h);
    }
    hadethList=ahdethOfFile;
    setState(() {
    });
  }
}
class Hadeth {
  String title ;
  String content ;
  Hadeth(this.title,this.content);

}
