import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_deatils.dart';
import 'package:islami/home/quran/sura_name.dart';

class QuranTab extends StatelessWidget {
  List<String>names = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخ"
        "لاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/quran_tab_image.png'),
        Container(
          width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Theme.of(context).primaryColor ,
                  width: 2
                )
              )
            ),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text('Name',
                style: Theme.of(context).textTheme.headline4),),
        Expanded(
          child: ListView.separated(itemBuilder: (_, index) {
            return SuraName(index,names[index]);
          },itemCount:names.length,
            separatorBuilder: (BuildContext _, int index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              color: Theme.of(context).primaryColor,
              height:2 ,
              width: double.infinity,

            );
            }
            ,),
        )
      ],

    );
  }
}
