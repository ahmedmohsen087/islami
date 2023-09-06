import 'package:flutter/material.dart';

class SabahaTab extends StatefulWidget {

  @override
  State<SabahaTab> createState() => _SabahaTabState();
}

class _SabahaTabState extends State<SabahaTab> {
  int counter = 0 ;
  int index = 0 ;
  double angle =0 ;
  List <String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا إله إلا الله',
    'الحمد لله',];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head_sebha_logo.png'),
            InkWell(
              onTap: onTsbaehTab,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*.5,
                padding:  EdgeInsets.all(MediaQuery.of(context).size.height*.09),
                child: Transform.rotate(
                   angle: angle,
                    child: Image.asset('assets/images/body_sebha_logo.png')),
              ),
            ),
          ],
        ),
        Text('عدد التسبيحات',
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
        textAlign: TextAlign.center),
        Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Color(0xffB7935F),
            borderRadius: BorderRadius.circular(20),
          ),
          child:Text('$counter ',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),

        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Color(0xffB7935F),
            borderRadius: BorderRadius.circular(20),
          ),
          child:Text(' ${tasbeh[index]} ',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),

        ),
        SizedBox(height: 10,)

      ],

    );
  }

  void onTsbaehTab (){
    counter++;
    if (counter==33){
      index++;
      counter=0;
    }
    if(index==tasbeh.length){
      index=0;
    }
    angle+= 1/33;
setState(() {

});  }
}
