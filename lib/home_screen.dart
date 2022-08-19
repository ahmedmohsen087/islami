import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab.dart';
import 'package:islami/my_colors.dart';
import 'package:islami/quran_tab.dart';
import 'package:islami/radio_tab.dart';
import 'package:islami/sabaha_tab.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = 'Home';

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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Islami', style: TextStyle(color: Colors.black,fontSize: 30
                ,fontWeight: FontWeight.w500),
          ),
        ),
        bottomNavigationBar:Theme(
          data: Theme.of(context).copyWith(canvasColor: MyColors.PrimryColors),
          child: BottomNavigationBar(
            currentIndex: SelectedTabIcons,
            onTap: (index){
              setState(() {
                SelectedTabIcons = index ;
              });
            },
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.black),
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
