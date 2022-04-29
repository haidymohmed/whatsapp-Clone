import 'package:flutter/material.dart';

import 'icon_creation.dart';

Widget bottomSheet(context){
  return Container(
    padding: EdgeInsets.only(right: 20 , left: 20),
    margin: EdgeInsets.only(bottom: 60),
    height: 250,
    width: MediaQuery.of(context).size.width,
    child: Card(
      margin: EdgeInsets.only(
        top: 20,
        right: 10,
        left: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15 , left: 15 , top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconCreation(Icons.insert_drive_file , "Document" , Colors.deepPurple.shade700),
                iconCreation(Icons.camera_alt , "Camera" , Colors.pinkAccent.shade400),
                iconCreation(Icons.insert_photo , "Gallery" , Colors.purple.shade400),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15 , left: 15 , bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconCreation(Icons.headset_rounded , "Audio" , Colors.deepPurple.shade700),
                iconCreation(Icons.location_pin , "Location" , Colors.pinkAccent.shade400),
                iconCreation(Icons.person , "Contact" , Colors.blueAccent),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}