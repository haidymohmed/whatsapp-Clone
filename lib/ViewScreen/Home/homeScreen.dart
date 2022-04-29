import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/ViewScreen/CallListScreen/CallListView.dart';
import 'package:whatsapp/ViewScreen/CreateGroupScreen/CreateGroup.dart';
import 'package:whatsapp/ViewScreen/StatusListView/StatusListView.dart';

import '../ChatsListScreen/ChatListView.dart';
import '../Settings/setting_view.dart';


class HomePage extends StatefulWidget {
  static String id = "homePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static String id = "homePage";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whats App"),
          backgroundColor: Colors.teal.shade800,
          actions: [
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.search) ,
            ),
            PopupMenuButton(
                itemBuilder: (context){
                  return [
                    PopupMenuItem(
                        child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, CreateGroup.id);
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("New Group")
                            )
                        )
                    ),
                    PopupMenuItem(
                        child: InkWell(
                          onTap: (){},
                            child: Container(
                              width: MediaQuery.of(context).size.width/2,
                                child: Text("New Broadcast")
                            )
                        )
                    ),
                    PopupMenuItem(
                        child: InkWell(
                            onTap: (){},
                            child: Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Linked devices")
                            )
                        )
                    ),
                    PopupMenuItem(
                        child: InkWell(
                            onTap: (){},
                            child: Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Started Message")
                            )
                        )
                    ),
                    PopupMenuItem(
                        child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, Settings.id);
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width/3,
                                child: Text("Settings")
                            )
                        )
                    ),
                  ];
                }
            )
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Container(width: 5, height: 30, child :  Icon(Icons.camera_alt)),
              Padding(padding: EdgeInsets.only(top: 8,bottom: 8,left: 0,right: 0), child : Container(child: Text("CHATS" , style: TextStyle ( fontWeight: FontWeight.bold , fontSize: 12),))),
              Padding(padding: EdgeInsets.only(top: 8,bottom: 8,left: 0,right: 0), child : Text("STATUS", style: TextStyle ( fontWeight: FontWeight.bold , fontSize: 12),)),
              Padding(padding: EdgeInsets.only(top: 8,bottom: 8,left: 0,right: 0), child : Text("CALLS", style: TextStyle ( fontWeight: FontWeight.bold , fontSize: 12),)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("CHATS" , style: TextStyle(fontFamily: 'Pacifico'),),
            ChatListView(),
            Status(),
            CallsListView(),
          ],
        ),
      ),
    );

  }
}
