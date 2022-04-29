import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/ViewScreen/StatusListView/units/OwnStatus.dart';
import 'units/OtherStatus.dart';
class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.grey.shade100,
              onPressed: (){},
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(height: 33,),
          FloatingActionButton(
              onPressed: (){},
            backgroundColor: Colors.greenAccent.shade700,
            elevation: 5,
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5.h,),
            OwnStatus(),
            showLabel('Recent updates'),
            OtherStatus(
                name: "Ali Nour",
                date: 'Today at 3:50',
                image: 'images/image3.jpg',
                isSeen: false,
                num: 2,
            ),
            OtherStatus(
                name: "Menna Ahmed",
                date: 'Today at 3:50',
                image: 'images/image4.jpg',
                isSeen: false,
                num: 5,
            ),
            OtherStatus(
              name: "Marian Aser",
              date: 'Today at 3:50',
              image: 'images/image2.jpg',
              isSeen: false,
              num: 4,
            ),
            showLabel('Viewed updates'),
            OtherStatus(
              name: "Ali Nour",
              date: 'Today at 3:50',
              image: 'images/image1.jpeg',
              isSeen: true,
              num: 3,
            ),
            OtherStatus(
              name: "Menna Ahmed",
              date: 'Today at 3:50',
              image: 'images/image2.jpg',
              isSeen: true,
              num: 2,
            ),
            OtherStatus(
              name: "Marian Aser",
              date: 'Today at 3:50',
              image: 'images/image4.jpg',
              isSeen: true,
              num: 1,
            ),

          ],
        ),
      ),
    );
  }
  Container showLabel(String labelName){
    return
      Container(
        height: 25.h,
        width: 1.sw,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            labelName,
            style: TextStyle(
                fontSize: 13.r,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      );
  }
}
