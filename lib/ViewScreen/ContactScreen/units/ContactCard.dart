import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/Models/ChatList.dart';

import '../../ChatScreen/chatScreen.dart';

class ContactCard extends StatefulWidget {
  final ChatData contact ;
  ContactCard(this.contact);

  @override
  _ContactCardState createState() => _ContactCardState(this.contact);
}

class _ContactCardState extends State<ContactCard> {
  final ChatData contact;
  _ContactCardState(this.contact);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
        right: 3,
        left: 3
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => ChatScreen(contact.name , contact.image)
              )
          );
        },
        child: ListTile(
          leading: Container(
            height: 53,
            width: 50,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("images/perm_identity_black_24dp.svg" , color: Colors.blueGrey[200], width: 50 , height: 50,),
                ),
                contact.isSelect ?
                Positioned(
                  bottom: 8,
                  right: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 8,
                    child: Icon(
                      Icons.check ,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ): Container()
              ],
            ),
          ),
          title: Text(contact.name , style: TextStyle( fontSize: 14 , fontWeight: FontWeight.w600),),
          subtitle: Text(contact.statues , style: TextStyle( fontSize: 10 ),),
        ),
      ),
    );
  }
}





