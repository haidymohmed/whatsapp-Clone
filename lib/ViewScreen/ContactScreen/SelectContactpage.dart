import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/Models/ChatList.dart';
import 'package:whatsapp/ViewScreen/CreateGroupScreen/CreateGroup.dart';
import 'package:whatsapp/ViewScreen/ContactScreen/units/ContactCard.dart';
class SelectContactScreen extends StatefulWidget {
  static String id  = "SelectContactScreen";
  const SelectContactScreen({Key? key}) : super(key: key);
  @override
  _SelectContactScreenState createState() => _SelectContactScreenState();
}

class _SelectContactScreenState extends State<SelectContactScreen> {
  static String id  = "SelectContactScreen";
  List<ChatData> contact = [
    ChatData.contact( name: 'Haidy Mohmed ' , statues: 'We can do it' , image: 'images/image1.jpeg') ,
    ChatData.contact( name: 'Omnia Mohmed Ali' , statues: 'Available', image: 'images/image1.jpeg') ,
    ChatData.contact( name: 'Osama ' , statues: 'Let the rain run away all the bain of yesterday', image: 'images/image1.jpeg') ,
    ChatData.contact( name: 'Maryem' , statues: 'We bear what we heate to get what to love', image: 'images/image1.jpeg') ,
    ChatData.contact( name: 'Haidy Mohmed ' , statues: 'Available', image: 'images/image1.jpeg') ,
    ChatData.contact( name: 'Omnia Mohmed Ali' , statues: 'Hi !', image: 'images/image1.jpeg') ,
    ChatData.contact( name: 'Osama ' , statues: 'Calm !', image: 'images/image1.jpeg') ,
    ChatData.contact( name: 'Maryem' , statues: 'Available', image: 'images/image1.jpeg') ,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: IconButton(
              icon: Icon(Icons.arrow_back , size: 30,),
              onPressed: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            title: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Contact" ,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    "135 contacts" ,
                    style: TextStyle(
                      fontSize: 10 ,
                      fontWeight: FontWeight.normal
                    ),
                  )
                ],
              ),
            ),
            actions: [
              IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.search , size: 26,)
              ),
              PopupMenuButton(
                  itemBuilder: (context){
                    return [
                      PopupMenuItem(child: SizedBox( width: MediaQuery.of(context).size.width/4, child: Text("Invite a friend" , style: TextStyle(fontSize: 13),))),
                      PopupMenuItem(child: Text("Contacts" , style: TextStyle(fontSize: 13),)),
                      PopupMenuItem(child: Text("Refresh" , style: TextStyle(fontSize: 13),)),
                      PopupMenuItem(child: Text("Help" , style: TextStyle(fontSize: 13),)),
                    ];
                  }
              )
            ],
          ),
          body: ListView.builder(
            itemCount: contact.length + 2,
            itemBuilder: (BuildContext context, int index) {
              if(index == 0){
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 5,
                      right: 3,
                      left: 3
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, CreateGroup.id);
                    },
                      child: listTileForNewGroup()
                  ),
                );
              }
              else if(index == 1){
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 3,
                      left: 3
                  ),
                  child: listTileForNewContact(),
                );
              }
              else{
                return ContactCard(contact[index-2]);
              }
            },
          ),
        )
    );
  }
  ListTile listTileForNewGroup(){
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.teal,
        child: SvgPicture.asset("images/people_black_24dp.svg" , color: Colors.white ,  width: 25 , height: 25,),
      ),
      title: Text("New group" , style: TextStyle( fontSize: 14 , fontWeight: FontWeight.w600),),
    );
  }
  ListTile listTileForNewContact(){
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.teal,
        child: SvgPicture.asset("images/person_add_black_24dp.svg" , color: Colors.white, width: 25 , height: 25,),
      ),
      title: Text("New contact" , style: TextStyle( fontSize: 14 , fontWeight: FontWeight.w600),),
      trailing: IconButton(
        onPressed: (){},
        icon: Icon(Icons.qr_code_scanner_rounded , size: 25 , color: Colors.blueGrey[200],),
      ),
    );
  }
}
