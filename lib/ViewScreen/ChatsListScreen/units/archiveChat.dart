import 'package:flutter/material.dart';
ListTile archiveChats(){
  return ListTile(
      leading: Icon(Icons.archive_outlined , color: Colors.grey,),
      title: Text("Archived" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),),
      trailing : Text("19"  , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w400 , color: Colors.green.shade700),)
  );
}