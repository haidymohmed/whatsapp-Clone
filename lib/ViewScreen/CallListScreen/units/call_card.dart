import 'package:flutter/material.dart';
import 'package:whatsapp/ViewScreen/CallListScreen/units/GetIcon.dart';

// ignore: must_be_immutable
class CallCard extends StatelessWidget {
  List callList ;
  int index;
  CallCard({Key? key , required this.callList , required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(callList[index].image),
      ),
      title: Text(callList[index].name),
      subtitle: Row(
        children: [
          GetIcon(
            index: index,
            callList: callList,
          ) ,
          Text(callList[index].date.toString())
        ],
      ),
      dense: true,
      trailing: Icon(Icons.call,color: Colors.teal,),
    );
  }
}
