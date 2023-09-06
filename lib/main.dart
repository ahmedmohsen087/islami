import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_deatils.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/providers/settings_provider.dart';
import 'package:islami/home/quran/sura_deatils.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main (){
  runApp(ChangeNotifierProvider<SettingsProvider>(
    create: (BuildContext){
      return SettingsProvider();
    },
      child: MyApp()
  ));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var seetingProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      theme:MyTheme.LightTheme,
      themeMode: seetingProvider.CurrentTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_) =>HomeScreen(),
        SuraDeatils.routeName:(_) => SuraDeatils(),
        HadethDeatils.routeName:(_) => HadethDeatils(),

      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),

      ],
      locale: Locale(seetingProvider.CurrentLangue),
    );
  }
}
