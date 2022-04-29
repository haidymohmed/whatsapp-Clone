import 'package:flutter/material.dart';

import '../Models/settongModel.dart';

// ignore: must_be_immutable
class SettingCard extends StatelessWidget {
  late SettingModel settingModel;
  SettingCard({Key? key , required this.settingModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        settingModel.action();
      },
      child: ListTile(
        leading: settingModel.iconData == Icons.email? null : Icon(
          settingModel.iconData,
        ),
        title: Text(
            settingModel.title.toString()
        ),
        subtitle: settingModel.subTitle.toString().isEmpty ? null:
        Text(
            settingModel.subTitle.toString()
        ),
        trailing: settingModel.trailing,
      ),
    );
  }
}
