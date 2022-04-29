import 'package:flutter/cupertino.dart';

class SettingModel{
  late IconData iconData;
  late String title;
  late String subTitle;
  late var action;
  late var trailing;
  SettingModel({required this.iconData , required this.subTitle , required this.title , this.action , this.trailing});
}