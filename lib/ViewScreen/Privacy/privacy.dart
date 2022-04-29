import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/Models/settongModel.dart';
import 'package:whatsapp/ViewScreen/Settings/units/profile_list.dart';

import '../../Models/color.dart';
import '../../Widgets/Setting_card.dart';
class Privacy extends StatefulWidget {
  static String id = "Privacy";
  const Privacy({Key? key}) : super(key: key);

  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool read = true;
  @override
  Widget build(BuildContext context) {
    List setting = [
      SettingModel(iconData: Icons.email, subTitle: "Nobody", title: 'Last seen'),
      SettingModel(iconData: Icons.email, subTitle: 'Nobody', title: 'Profile Photo'),
      SettingModel(iconData: Icons.email, subTitle: "Nobody", title: 'About'),
      SettingModel(iconData: Icons.email, subTitle: "contact", title: 'Status'),
      SettingModel(
          iconData: Icons.email,
          subTitle: 'if turned off , you wont send Read receipts , Read receipts are always sent for group chats',
          title: 'Read receipts',
          action: (){},
          trailing: Switch(onChanged: (bool value) {
            setState(() {
              read = value;
            });
          }, value: read,
          )
      ),
      SettingModel(iconData: Icons.email, subTitle: "contact", title: 'Groups'),
      SettingModel(iconData: Icons.email, subTitle: "None", title: 'Live Location'),
      SettingModel(iconData: Icons.email, subTitle: "2", title: 'Blocked contact'),
      SettingModel(iconData: Icons.email, subTitle: "Disabled", title: 'Fingerprint'),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: UserColor.app,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
          title: Text(
            "Privacy",
            style: TextStyle(
                fontSize: 20.sp
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30.sp,
                left: 15.sp,
                bottom: 8.sp
              ),
              child: Text(
                  "Who can see your personal info",
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 2.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                  "if you don't share your Last seen , you won't able to see other people's last seen",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            SettingCard(settingModel : setting[0]),
            SettingCard(settingModel : setting[1]),
            SettingCard(settingModel : setting[2]),
            SettingCard(settingModel : setting[3]),
            SettingCard(settingModel : setting[4]),
            SizedBox(height: 5.sp,),
            Divider(),
            SizedBox(height: 5.sp,),
            Padding(
              padding: EdgeInsets.only(
                  top: 5.sp,
                  left: 15.sp,
                  bottom: 5.sp
              ),
              child: Text(
                "Disappearing message timer",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            SettingCard(settingModel : SettingModel(
              title: "Default message timer",
              subTitle: "Start new chats Disappearing message set to your timer",
              iconData: Icons.email,
              trailing: Text(
                "Off"
              )
            )),
            SizedBox(height: 5.sp,),
            Divider(),
            SizedBox(height: 5.sp,),
            SettingCard(settingModel : setting[5]),
            SettingCard(settingModel : setting[6]),
            SettingCard(settingModel : setting[7]),
            SettingCard(settingModel : setting[8]),
          ]
        )
      )
    );
  }
}
