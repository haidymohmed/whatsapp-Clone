
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconCreation(IconData iconData , String name , Color color){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 29,
        child: Icon(iconData , size: 28, color: Colors.white,),
      ),
      Padding(
        padding: const EdgeInsets.all(5),
        child: Text(name , style: TextStyle(fontSize: 10),),
      ),
    ],
  );
}