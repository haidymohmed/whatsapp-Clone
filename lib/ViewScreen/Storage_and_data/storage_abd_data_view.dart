import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/color.dart';
import '../../Models/settongModel.dart';
import '../../Widgets/Setting_card.dart';

class StorageSetting extends StatefulWidget {
  static String id = "StorageSetting";
  const StorageSetting({Key? key}) : super(key: key);

  @override
  _StorageSettingState createState() => _StorageSettingState();
}

class _StorageSettingState extends State<StorageSetting> {
  bool lessData = false ;
  @override
  Widget build(BuildContext context) {
    List<SettingModel> setting = [
      SettingModel(iconData: Icons.folder, subTitle: "2.4 GB", title: 'Manage storage' ),
      SettingModel(iconData: Icons.data_usage_rounded, subTitle: "251.1 MB sent", title: 'Network usage' , action: (){
      }),
      SettingModel(iconData: Icons.email, subTitle: "", title: 'Use Less data for calls' , action: (){
      }, trailing: Switch(
        activeColor: UserColor.app,
        value: lessData,
        onChanged: (bool value) {
          setState(() {
            lessData = value;
          });
        },
      )),
      SettingModel(iconData: Icons.email, subTitle: "Photos", title: 'When using mobile data'),
      SettingModel(iconData: Icons.email, subTitle: "All media", title: 'When connected on Wi-Fi'),
      SettingModel(iconData: Icons.email, subTitle: "No Media", title: 'When roaming'),
      SettingModel(iconData: Icons.email, subTitle: "Auto ", title: 'Photo upload quality'),
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
          "Storage and data",
          style: TextStyle(
              fontSize: 20.sp
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 10.sp,),
            SettingCard(settingModel : setting[0]),
            Divider(),
            SettingCard(settingModel : setting[1]),
            Container(
              padding: EdgeInsets.only(left: 47.sp),
              child: SettingCard(settingModel : setting[2]),
            ),
            SizedBox(height: 10.sp,),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Media auto-download",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 17.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Voice massages are always automatically downloaded",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 47.sp),
              child: Column(
                children: [
                  SettingCard(settingModel : setting[3]),
                  SettingCard(settingModel : setting[4]),
                  SettingCard(settingModel : setting[5]),
                ],
              ),
            ),
            SizedBox(height: 10.sp,),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.sp,
                  left: 15.sp,
                  bottom: 8.sp
              ),
              child: Text(
                "Media upload quality",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 19.sp,
                  bottom: 8.sp
              ),
              child: Text(
                'Choose the quality of media files to be sent',
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 47.sp),
              child: SettingCard(settingModel : setting[6]),
            ),
          ],
        ),
      ),
    );
  }
}
