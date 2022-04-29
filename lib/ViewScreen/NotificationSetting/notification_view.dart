import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/color.dart';
import '../../Models/settongModel.dart';
import '../../Widgets/Setting_card.dart';

class NotificationSetting extends StatefulWidget {
  static String id = "NotificationSetting";
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool Conversation = false , highPriority = false , notification = false, highPriorityG = false , notificationG = false;
  @override
  Widget build(BuildContext context) {
    List<SettingModel> setting = [
      SettingModel(iconData: Icons.email, subTitle: "Play sounds for incoming and outgoing massages", title: 'Conversation tones' , action: (){
      }, trailing: Switch(
        activeColor: UserColor.app,
        value: Conversation,
        onChanged: (bool value) {
          setState(() {
            Conversation = value;
          });
        },
      )),
      SettingModel(iconData: Icons.email, subTitle: "Default (None)", title: 'Notification tone ' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "None", title: 'Vibrate ' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "White", title: 'Light ' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "Small", title: 'Font Size'),
      SettingModel(iconData: Icons.email, subTitle: "show previews of notification at the top of the screen", title: 'Use high priority notification' , action: (){
      }, trailing: Switch(
        activeColor: UserColor.app,
        value: highPriority,
        onChanged: (bool value) {
          setState(() {
            highPriority = value;
          });
        },
      )),
      SettingModel(iconData: Icons.email, subTitle: "Show notification for reaction to message you send", title: 'Reaction Notification' , action: (){
      }, trailing: Switch(
        activeColor: UserColor.app,
        value: notification,
        onChanged: (bool value) {
          setState(() {
            notification = value;
          });
        },
      )),

      SettingModel(iconData: Icons.email, subTitle: "Default (None)", title: 'Notification tone ' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "None", title: 'Vibrate ' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "White", title: 'Light ' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "Small", title: 'Font Size'),
      SettingModel(iconData: Icons.email, subTitle: "show previews of notification at the top of the screen", title: 'Use high priority notification' , action: (){
      }, trailing: Switch(
        activeColor: UserColor.app,
        value: highPriorityG,
        onChanged: (bool value) {
          setState(() {
            highPriorityG = value;
          });
        },
      )),
      SettingModel(iconData: Icons.email, subTitle: "Show notification for reaction to message you send", title: 'Reaction Notification' , action: (){
      }, trailing: Switch(
        activeColor: UserColor.app,
        value: notificationG,
        onChanged: (bool value) {
          setState(() {
            notificationG = value;
          });
        },
      )),
      SettingModel(iconData: Icons.email, subTitle: "Default", title: 'Ringtone' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "Default", title: 'Vibrate' , action: (){
      }),
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
          "Notification",
          style: TextStyle(
              fontSize: 20.sp
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SettingCard(settingModel : setting[0]),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Message",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            SettingCard(settingModel : setting[2]),
            SettingCard(settingModel : setting[3]),
            SettingCard(settingModel : setting[4]),
            SettingCard(settingModel : setting[5]),
            SizedBox(height: 10.sp,),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Groups",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            SettingCard(settingModel : setting[6]),
            SettingCard(settingModel : setting[7]),
            SettingCard(settingModel : setting[8]),
            SettingCard(settingModel : setting[9]),
            SettingCard(settingModel : setting[10]),
            SettingCard(settingModel : setting[11]),
            SizedBox(height: 10.sp,),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Calls",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            SettingCard(settingModel : setting[12]),
            SettingCard(settingModel : setting[13]),
          ],
        ),
      ),
    );
  }
}
