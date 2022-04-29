import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/color.dart';
import '../../Models/settongModel.dart';
import '../../Widgets/Setting_card.dart';

class HelpSetting extends StatefulWidget {
  static String id = "HelpSetting";
  const HelpSetting({Key? key}) : super(key: key);

  @override
  _HelpSettingState createState() => _HelpSettingState();
}

class _HelpSettingState extends State<HelpSetting> {
  bool lessData = false ;
  @override
  Widget build(BuildContext context) {
    List<SettingModel> setting = [
      SettingModel(iconData: Icons.help, subTitle: "", title: 'Help Center'),
      SettingModel(iconData: Icons.group, subTitle: "Questions? Need help?", title: 'Contact us'),
      SettingModel(iconData: Icons.insert_drive_file_outlined, subTitle: "", title: 'Terms and Privacy Policy'),
      SettingModel(iconData: Icons.info, subTitle: "", title: 'Photo upload quality'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UserColor.app,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Help",
          style: TextStyle(
              fontSize: 20.sp
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SettingCard(settingModel : setting[0]),
            SettingCard(settingModel : setting[1]),
            SettingCard(settingModel : setting[2]),
            SettingCard(settingModel : setting[3]),
          ],
        ),
      ),
    );
  }
}
