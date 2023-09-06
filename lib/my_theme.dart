import 'package:flutter/material.dart';

class MyTheme {
  static final  Color primaryColor = Color(0xFFB7935F) ;
  static final ThemeData LightTheme = ThemeData(
      primaryColor:primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30
            ,fontWeight: FontWeight.w500
        )
    ),
      textTheme: TextTheme(
          bodyText1: TextStyle(
              color: Colors.black,
              fontSize: 30
          ),
          headline1: TextStyle(
              color: Colors.black,
              fontSize: 14
          ),
          headline4: TextStyle(
              color: Colors.black,
              fontSize: 28
          ),
          headline5: TextStyle(
              color: Colors.black,
              fontSize: 20
          )
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(color: Colors.black),
    )

);
}