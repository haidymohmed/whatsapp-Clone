import 'package:flutter/material.dart';
import 'package:whatsapp/Models/ChatList.dart';
import 'package:whatsapp/ViewScreen/ContactScreen/units/ContactCard.dart';
import 'package:whatsapp/Widgets/GroupCards.dart';

class CreateGroup extends StatefulWidget {
  static String id = "CreateGroup";
  const CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  static String id = "CreateGroup";
  List<ChatData> contact = [
    ChatData.contact( name: 'Haidy  ' , statues: 'We can do it') ,
    ChatData.contact( name: 'Omnia ', statues: 'Hi ') ,
    ChatData.contact( name: 'Osama ' , statues: 'Let the rain run away all the bain of yesterday') ,
    ChatData.contact( name: 'Maryem' , statues: 'We bear what we heate to get what to love') ,
    ChatData.contact( name: 'Ahmed  ' , statues: 'We can do it') ,
    ChatData.contact( name: 'Omnia ' , statues: 'Hi ') ,
    ChatData.contact( name: 'Ziad ' , statues: 'Let the rain run away all the bain of yesterday') ,
    ChatData.contact( name: 'Menna' , statues: 'We bear what we heate to get what to love') ,
  ];
  List<ChatData> groups = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
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
                    "New Group" ,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    groups.length == 0?
                    "Add Participants" : "${groups.length} of ${contact.length} selected"
                    ,
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
                  onPressed: (){},
                  icon: Icon(Icons.search , size: 26,)
              ),
            ],
          ),
          body: Stack(
            children: [
              ListView.builder(
                itemCount: contact.length+1,
                itemBuilder: (BuildContext context, int index) {
                  if(index == 0){
                    return Container(
                      height: groups.length >0 ? 90 : 10,
                    );
                  }
                  return InkWell(
                      onTap: (){
                        if(contact[index-1].isSelect == false){
                          setState(() {
                            contact[index-1].isSelect = true ;
                            groups.add(contact[index-1]);
                          });
                        }
                        else{
                          setState(() {
                            contact[index-1].isSelect = false ;
                            groups.remove(contact[index-1]);
                          });
                        }
                      },
                      child: ContactCard(contact[index-1])
                  );
                },
              ),
              groups.length > 0 ?
              Column(
                children: [
                  Container(
                    height: 75,
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: groups.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context , index){
                          if(groups[index].isSelect == true){
                            return InkWell(
                                onTap: (){
                                  setState(() {
                                    groups[index].isSelect = false;
                                    groups.remove(groups[index]);
                                  });
                                },
                                child: GroupsCard(contact: groups[index])
                            );
                          }
                          else {
                            return Container();
                          }
                        }
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 50 ,
                    endIndent: 50,
                  )
                ],
              )
              :
              Container()
            ],
          ),
        )
    );
  }
}
