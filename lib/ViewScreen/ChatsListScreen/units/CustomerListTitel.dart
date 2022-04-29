import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/Models/ChatList.dart';
import 'package:whatsapp/ViewScreen/ChatScreen/chatScreen.dart';

import 'PersonalImageView.dart';

// ignore: must_be_immutable
class CustomerListTitle extends StatefulWidget {
  ChatData _chatList;
  CustomerListTitle(this._chatList);
  @override
  _CustomerListTitleState createState() => _CustomerListTitleState(this._chatList);
}

class _CustomerListTitleState extends State<CustomerListTitle> {

  late int index ;
  late ChatData _chatList;
  _CustomerListTitleState(this._chatList);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        onTap: (){  },
          child: _listTileForChats(_chatList)
      ),
    );
  }
  ListTile _listTileForChats(ChatData _chatList ){
      return ListTile(
        leading:InkWell(
          onTap: (){
            showPersonalImage(context, _chatList.name, _chatList.image);
          },
          child: CircleAvatar(
            radius: 27.r,
            backgroundImage: AssetImage(_chatList.image!),
          ),
        ),
        title: Text(_chatList.name , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14.sp),),
        subtitle: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 2),
              child: seenIcon(_chatList.isSent , _chatList.isReed , _chatList.isSender),
            ),
            Text(_chatList.currentMessage),
          ],
        ),
        dense: true,
        trailing: Text(_chatList.date.toString().substring(10 , 16)),
        onTap: (){
          navigateChat(_chatList.name , _chatList.image!);
        },
      );
  }
  void navigateChat(String appTitle , String image) async {
    bool result = await Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => ChatScreen(appTitle , image)
      )
    );
  }
  Icon? seenIcon(bool isSent , bool isRead , bool isSender){
    if(isSender){
      if(isSent == false){
        return Icon(Icons.done , color: Colors.grey , size: 15, ) ;
      }
      else{
        if(isRead){
          return Icon(Icons.done_all , color: Colors.blue, size: 15,);
        }
        else{
          return Icon(Icons.done_all , color: Colors.grey , size: 15,);
        }
      }
    }
    else{
      return null;
    }
  }
  Widget messageCircleAvatar(bool isSender , int messageNum){
    if(!isSender){
      return CircleAvatar(
        radius: 7,
        backgroundColor: Colors.green.shade700,
        child: Text(messageNum.toString() , style: TextStyle(fontSize: 6 ,color: Colors.white , fontWeight: FontWeight.bold),),
      );
    }
    else return Text('' ,style: TextStyle(fontSize: 0),);
  }
}
/*
Container(
          width: 30,
          height: 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_chatList.date.toString().substring(10 , 16) ,style: TextStyle(fontSize: 8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  messageCircleAvatar(_chatList.isSender , 3),
                  Icon(Icons.volume_mute , color: Colors.grey , size: 15)
                ],
              )
            ],
          ),
        ),
*/