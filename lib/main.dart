import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/ViewScreen/Account/account.dart';
import 'package:whatsapp/ViewScreen/Privacy/privacy.dart';
import 'package:whatsapp/ViewScreen/Settings/setting_view.dart';
import 'ViewScreen/ChatSetting/chat_setting_view.dart';
import 'ViewScreen/ContactScreen/SelectContactpage.dart';
import 'ViewScreen/CreateGroupScreen/CreateGroup.dart';
import 'ViewScreen/HelpSetting/help_setting.dart';
import 'ViewScreen/Home/homeScreen.dart';
import 'ViewScreen/NotificationSetting/notification_view.dart';
import 'ViewScreen/OnBoardingScreen/LandingScreen.dart';
import 'ViewScreen/PhoneNumber/LoginScreen.dart';
import 'ViewScreen/SplashScreen/splashingScreen.dart';
import 'ViewScreen/Storage_and_data/storage_abd_data_view.dart';

void main() {
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "WhatsApp" ,
        home: SplashingScreen(),
        routes:
        {
          SplashingScreen.id : (context) => SplashingScreen(),
          HomePage.id : (context) => HomePage(),
          SelectContactScreen.id : (context) => SelectContactScreen(),
          CreateGroup.id : (context) => CreateGroup(),
          LandingScreen.id : (context) => LandingScreen(),
          LoginScreen.id : (context) => LoginScreen(),
          Settings.id : (context) => Settings(),
          Account.id : (context) => Account(),
          Privacy.id : (context) => Privacy(),
          ChatSetting.id :(context) => ChatSetting(),
          NotificationSetting.id :(context) => NotificationSetting(),
          StorageSetting.id :(context) => StorageSetting(),//HelpSetting
          HelpSetting.id :(context) => HelpSetting(),//HelpSetting
        },
      ),
    );
  }
}