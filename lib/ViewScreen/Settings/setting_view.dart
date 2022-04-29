import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/Models/settongModel.dart';
import 'package:whatsapp/ViewScreen/Account/account.dart';
import 'package:whatsapp/ViewScreen/ChatSetting/chat_setting_view.dart';
import 'package:whatsapp/ViewScreen/NotificationSetting/notification_view.dart';
import 'package:whatsapp/ViewScreen/Settings/units/profile_list.dart';
import 'package:whatsapp/ViewScreen/Storage_and_data/storage_abd_data_view.dart';

import '../../Models/color.dart';
import '../../Widgets/Setting_card.dart';
import '../HelpSetting/help_setting.dart';
class Settings extends StatefulWidget {
  static String id = "Settings";
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    List setting = [
      SettingModel(iconData: Icons.key, subTitle: "Privacy,security,change number", title: 'Account' , action: (){
        Navigator.pushNamed(context, Account.id);
      }),
      SettingModel(iconData: Icons.chat, subTitle: "Theme,wallpapers,chat History", title: 'Chats' , action: (){
        Navigator.pushNamed(context, ChatSetting.id);
      }),
      SettingModel(iconData: Icons.notifications, subTitle: "Message,group,call tones", title: 'Notification' , action: (){
        Navigator.pushNamed(context, NotificationSetting.id);
      }),
      SettingModel(iconData: Icons.data_usage_rounded, subTitle: "Network usage,auto-download", title: 'Storage and data', action: (){
        Navigator.pushNamed(context, StorageSetting.id);
      }),
      SettingModel(iconData: Icons.help_outline, subTitle: "Help center, contact us,privacy policy", title: 'Help',action: (){
        Navigator.pushNamed(context, HelpSetting.id);
      }),
      SettingModel(iconData: Icons.group, subTitle: '', title: 'Invite a friend'),
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
              "Settings",
            style: TextStyle(
              fontSize: 20.sp
            ),
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: setting.length + 1,
            itemBuilder: (context , index){
              if(index == 0){
                return ProfileList();
              }
              else{
                return SettingCard(settingModel : setting[index-1]);
              }
            },
          ),
        ),
      ),
    );
  }
}
