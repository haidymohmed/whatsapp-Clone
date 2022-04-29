import 'package:flutter/material.dart';

import 'CustomerListTitel.dart';
import 'PersonalImageView.dart';
import 'archiveChat.dart';
ListView listViewForChats(_chatList){
  return ListView.builder(
      itemCount: _chatList.length + 1,
      itemBuilder: (context , index){
        if(index == 0){
          return InkWell(
            onTap: (){
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  right: 3,
                  left: 3
              ),
              child: archiveChats(),
            ),
          );
        }
        else{
          return CustomerListTitle(_chatList[index-1]);
        }
      }
  );
}