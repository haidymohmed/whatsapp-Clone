import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/ViewScreen/ChatScreen/units/ChatTextField.dart';
import 'package:whatsapp/ViewScreen/ChatScreen/units/chatList.dart';
import '../ChatProfle/UserInfo.dart';
class ChatScreen extends StatefulWidget {
  static String id  = "ChatScreen";
  String? appTitle , image;
  ChatScreen(this.appTitle , this.image);
  @override
  _ChatScreenState createState() => _ChatScreenState(this.appTitle , this.image);
}

class _ChatScreenState extends State<ChatScreen> {
  ScrollController scrollController = ScrollController();
  static String id  = "ChatScreen";
  String? appTitle , image = null;
  _ChatScreenState(this.appTitle , this.image);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "images/wallpaper.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.teal.shade800,
              leadingWidth: 70,
              leading:  InkWell(
                onTap: (){
                  setState(() {
                    goBack();
                  });
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back , size: 24,),
                      image.toString().endsWith('.svg') == false?
                      CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(this.image.toString())
                      ):
                      Container(
                        width: 35.sp,
                        height: 35.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                            color: Colors.grey
                        ),
                        child: SvgPicture.asset(
                            this.image.toString(),
                          color: Colors.white,
                          width: 36.sp,
                          height: 36.sp,
                          fit: BoxFit.fill,
                          cacheColorFilter: true,

                        ),
                      )
                    ],
                  ),
                ),
              ),
              title: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfo(image: image!, name: appTitle!,number: "01113366783",)));
                },
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(appTitle!,style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text("Online" , style: TextStyle(fontSize: 10)),
                      )
                    ],
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.videocam,size: 20),
                  onPressed: () {  },
                ),
                IconButton(
                  icon: Icon(Icons.call,size: 20),
                  onPressed: () {  },
                ),
                PopupMenuButton(
                    iconSize: 20,
                    itemBuilder: (context){
                      return [
                        PopupMenuItem(child: Text("View contact",style: TextStyle(fontSize: 12),) ),
                        PopupMenuItem(child: Text("Media,links and docs" , style: TextStyle(fontSize: 12))),
                        PopupMenuItem(child: Text("mute notification" , style: TextStyle(fontSize: 12))),
                        PopupMenuItem(child: Text("Wallpaper", style: TextStyle(fontSize: 12))),
                        PopupMenuItem(child: Row(children: [Text("More", style: TextStyle(fontSize: 12)), Icon(Icons.arrow_right_sharp , color: Colors.grey,)],),
                        )
                      ];
                    }
                ),
              ],
            ),
            body: Container(
              height: MediaQuery.of(context).size.height ,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  GetChatList(context , scrollController),
                  getTextField(context , scrollController)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void goBack() {
    Navigator.pop(context, true);
  }

}