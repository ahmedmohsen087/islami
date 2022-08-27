import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/sabaha/sabaha_tab.dart';


class HomeScreen extends StatefulWidget {
static const String routeName = 'home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
int SelectedTabIcons = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/background.png')
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Islami',
          ),
        ),
        bottomNavigationBar:Theme(
          data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor
              ),
          child: BottomNavigationBar(
            currentIndex: SelectedTabIcons,
            onTap: (index){
              setState(() {
                SelectedTabIcons = index ;
              });
            },

            items: [
              BottomNavigationBarItem(icon:ImageIcon(AssetImage
                ('assets/images/radio.png'),) ,
                  label:'Radio' ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage
                ('assets/images/sebha_blue.png')) ,
                  label:'Sabaha' ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage
                ('assets/images/Group 6.png')) ,
                  label:'Hadeth' ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage
                ('assets/images/moshaf_blue.png')) ,
                  label:'Quran' ),
            ],
          ),
        ),
        body: Tabs[SelectedTabIcons],
      ),
    );
  }
  List<Widget> Tabs = [RadioTab(),SabahaTab(),HadethTab(),QuranTab()];
}
