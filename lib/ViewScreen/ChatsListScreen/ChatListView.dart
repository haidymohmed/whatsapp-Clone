import 'package:flutter/material.dart';
import 'package:whatsapp/Models/ChatList.dart';
import 'package:whatsapp/ViewScreen/ChatsListScreen/units/chatList.dart';
import '../ContactScreen/SelectContactpage.dart';
class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  _ChatListViewState createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  bool archive = true ;
  List<ChatData> _chatList = [
    ChatData(name: "Haidy Mohmed" , currentMessage: 'Hello !' , isSender: true ,  isSent: false ,  isReed: false , date: DateTime.now(), isGroup: true , image: 'images/image1.jpeg' , setImage: true),
    ChatData(name: "Omnia Mohmed" , currentMessage: 'Ok' , isSender: true , isSent: true ,  isReed: false , date: DateTime.now(), isGroup: true , image: 'images/image2.jpg' , setImage: true),
    ChatData(name: "Ziad" , currentMessage: 'objects' , isSender: true , isSent: true ,  isReed: true , date: DateTime.now(), isGroup: true , image: 'images/image3.jpg' , setImage: true),
    ChatData(name: "Roqaya" , currentMessage: 'OK' , isSender: false , isSent: false ,  isReed: false , date: DateTime.now(), isGroup: true , image: 'images/image4.jpg' , setImage: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal.shade800,
          onPressed: () {
            Navigator.pushNamed(context, SelectContactScreen.id);
          },
          child: Icon(
            Icons.message_rounded,
            color: Colors.white,
          ),
        ),
        body: listViewForChats(_chatList)
    );
  }
}
