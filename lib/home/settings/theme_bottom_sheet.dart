import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/settings_provider.dart';

class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var seetingProvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              seetingProvider.ChangeLangue('en');
            },
              child:
                  seetingProvider.CurrentLangue=='en'?
              getSelectedItem('English'):getUnSelectedItem('English')),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                seetingProvider.ChangeLangue('ar');
              },
              child:
              seetingProvider.CurrentLangue=='ar'?
              getSelectedItem('العربية'):
              getUnSelectedItem('العربية')),

        ],
      ),
    );
  }

  Widget getSelectedItem (String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(text,style: Theme.of(context).textTheme
          .headline5?.copyWith(
          color:Theme.of(context).primaryColor ),),
        Icon(Icons.check, color:
      Theme
          .of(context)
          .primaryColor,)
      ],);

  }

  Widget getUnSelectedItem (String text){
    return Row(children:
    [Text(text,
      style: Theme.of(context).textTheme.headline5,)
    ],);


  }
}
