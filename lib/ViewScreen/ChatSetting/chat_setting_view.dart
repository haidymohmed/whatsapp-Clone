import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/color.dart';
import '../../Models/settongModel.dart';
import '../../Widgets/Setting_card.dart';

class ChatSetting extends StatefulWidget {
  static String id = "ChatSetting";
  const ChatSetting({Key? key}) : super(key: key);

  @override
  _ChatSettingState createState() => _ChatSettingState();
}

class _ChatSettingState extends State<ChatSetting> {
  bool enter = false , media = false , archived = false;
  @override
  Widget build(BuildContext context) {
    List<SettingModel> setting = [
      SettingModel(iconData: Icons.dark_mode, subTitle: "System default", title: 'Theme' , action: (){
      }),
      SettingModel(iconData: Icons.wallpaper, subTitle: "", title: 'Wallpaper' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "Enter key will send your message", title: 'Enter is send' , trailing: Switch(
        activeColor: UserColor.app,
        value: enter,
        onChanged: (bool value) {
          setState(() {
            enter = value;
          });
        },
      )),
      SettingModel(iconData: Icons.email, subTitle: "Show newly downloaded media in your phone's gallery ", title: 'Media visibility', trailing: Switch(
        value: media,
        activeColor: UserColor.app,
        onChanged: (bool value) {
          setState(() {
            media = value;
          });
        },
      )),
      SettingModel(iconData: Icons.email, subTitle: "Small", title: 'Font Size'),
      SettingModel(iconData: Icons.email, subTitle: "Archived chats will remain archived when you receive a new message", title: 'Keep chats archived', trailing: Switch(
        value: archived,
        activeColor: UserColor.app,
        onChanged: (bool value) {
          setState(() {
            archived = value;
          });
        },
      )),
      SettingModel(iconData: Icons.backup, subTitle: "", title: 'Chat backup' , action: (){
      }),
      SettingModel(iconData: Icons.history, subTitle: "", title: 'Chat history' , action: (){
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
          "Chats",
          style: TextStyle(
              fontSize: 20.sp
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Display",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            SettingCard(settingModel : setting[0]),
            SettingCard(settingModel : setting[1]),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Chat Setting",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40.sp),
              child: Column(
                children: [
                  SettingCard(settingModel : setting[2]),
                  SettingCard(settingModel : setting[3]),
                  SettingCard(settingModel : setting[4]),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Archived chats",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40.sp),
              child: Column(
                children: [
                  SettingCard(settingModel : setting[5]),
                ],
              ),
            ),
            SizedBox(height: 20.sp,),
            Divider(),
            SettingCard(settingModel : setting[6]),
            SettingCard(settingModel : setting[7]),
          ],
        ),
      ),
    );
  }
}
