import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_deatils.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/quran/sura_deatils.dart';
import 'package:islami/my_theme.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:MyTheme.LightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_) =>HomeScreen(),
        SuraDeatils.routeName:(_) => SuraDeatils(),
        HadethDeatils.routeName:(_) => HadethDeatils(),

      },
    );
  }
}
