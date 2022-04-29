import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/Models/ChatList.dart';

class GroupsCard extends StatelessWidget {
  final ChatData contact ;
  const GroupsCard({Key? key , required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: EdgeInsets.symmetric(
        vertical: 2 ,
        horizontal: 8
      ),
      child: Column(
        children: [
          Stack(
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
                  backgroundColor: Colors.grey,
                  radius: 8,
                  child: Icon(
                    Icons.clear ,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ): Container()
            ],
          ),
          SizedBox(height: 2,),
          Text(contact.name , style: TextStyle(fontSize: 10),),
        ],
      ),
    );
  }
}
