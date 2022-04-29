import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/Models/settongModel.dart';
import 'package:whatsapp/ViewScreen/Settings/units/profile_list.dart';

import '../../Models/color.dart';
import '../../Widgets/Setting_card.dart';
import '../Privacy/privacy.dart';
class Account extends StatefulWidget {
  static String id = "Account";
  const Account({Key? key}) : super(key: key);

  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    List setting = [
      SettingModel(iconData: Icons.lock, subTitle: "", title: 'Privacy' ,action: (){

        Navigator.pushNamed(context, Privacy.id);
      }),
      SettingModel(iconData: Icons.security, subTitle: "", title: 'Security'),
      SettingModel(iconData: Icons.verified_user_sharp, subTitle: '', title: 'Two-step verification'),
      SettingModel(iconData: Icons.login_rounded, subTitle: "", title: 'Change Number'),
      SettingModel(iconData: Icons.insert_drive_file_outlined, subTitle: "", title: 'Request account info'),
      SettingModel(
          iconData: Icons.delete,
          subTitle: '',
          title: 'Delete my Account',
        action: (){}
      ),
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
          "Account",
          style: TextStyle(
              fontSize: 20.sp
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: setting.length ,
          itemBuilder: (context , index){
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 2.sp),
              child: SettingCard(settingModel : setting[index]),
            );
          },
        ),
      ),
    );
  }
}
