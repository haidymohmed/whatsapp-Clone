import 'package:flutter/material.dart';
import 'OwnMessageCard.dart';
import 'ReplyMessageCard.dart';
// ignore: non_constant_identifier_names
GetChatList(context , scrollController){
  return Container(
      height: MediaQuery.of(context).size.height -150,
      child: ListView(
        controller: scrollController,
        children: [
          OwnMessageCard("Good Morning !" , "01:12 Am"),
          ReplyMessageCard("Good Morning ! How are you ?" , "01:13 Am"),
          OwnMessageCard("I am fine , what about you ?" , "01:13 Am"),
          ReplyMessageCard("Fine Thanks" , "01:13 Am"),
          OwnMessageCard("What are you panning to do tonight" , "01:14 Am"),
          ReplyMessageCard("nothing !" , "01:14 Am"),
          ReplyMessageCard("what about you ?" , "01:14 Am"),
          OwnMessageCard("I am free today" , "01:15 Am"),
          OwnMessageCard("Lets go to restaurant and have dinner together" , "01:15 Am"),
          ReplyMessageCard("Ok , I never mind" , "01:16 Am"),
          OwnMessageCard("What about 8 o'clock" , "01:16 Am"),
          ReplyMessageCard("Ok , I never mind" , "01:17 Am"),
          OwnMessageCard("Ok See you tonight " , "01:16 Am"),
          ReplyMessageCard("ok " , "01:17 Am"),
        ],
      ),
    );
}