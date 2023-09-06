import 'package:flutter/material.dart';
import 'package:islami/home/settings/language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/settings/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language
          ,style: Theme.of(context).textTheme.bodyText1),
          SizedBox(height: 5),
          InkWell(
            onTap:  (){ShowLanguageBottomSheet();
              }
            ,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 1
                )
              ) ,
                child: Text('English',style: Theme.of(context).textTheme
                    .headline5,)),
          ),
          SizedBox(height: 20,),
          Text(AppLocalizations.of(context)!.theme
          ,style: Theme.of(context).textTheme.bodyText1),
          SizedBox(height: 5),
          InkWell(
            onTap: (){
              ShowThemeBottomSheat();
            },
            child: Container(
                padding: EdgeInsets.all(8),
                decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 1
                    )
                ) ,
                child: Text('Light',style: Theme.of(context).textTheme
                    .headline5,)),
          ),

        ],
      ),
    );
  }

  void ShowLanguageBottomSheet (){
    showModalBottomSheet(context: context, builder: (buildcontext){
      return LanguageBottomSheet();
    });
  }
  void ShowThemeBottomSheat (){
    showModalBottomSheet(context: context, builder: (buildcontext){
      return ThemeBottomSheet();
    });
  }
}
