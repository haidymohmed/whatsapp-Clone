import 'dart:core';

class ChatData {
  late String name , currentMessage , statues , phoneNumber;
  late DateTime date ;
  String? image;
  late bool isReed , isGroup , isSent , isSender  , setImage , isSelect = false;

  ChatData({required this.setImage , required this.name ,required this.currentMessage ,required this.date ,required this.isSent , required this.isReed ,required this.isGroup , required this.image , required this.isSender});
  ChatData.contact({required this.name , required this.statues , this.isSelect = false , this.image});
  }