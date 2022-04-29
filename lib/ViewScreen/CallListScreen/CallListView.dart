import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/Models/CallList.dart';
import 'units/call_card.dart';
class CallsListView extends StatefulWidget {
  const CallsListView({Key? key}) : super(key: key);

  @override
  _CallsListViewState createState() => _CallsListViewState();
}

class _CallsListViewState extends State<CallsListView> {
  List<CallData> _callList = [
    CallData(name: "Haidy" , date: DateTime.now(), isGroup: true , isComing: true , image: "images/image2.jpg"),
    CallData(name: "Omnia Mohmed" , date: DateTime.now(), isGroup: true , isComing: false , image: "images/image2.jpg")
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: _callList.length,
          itemBuilder: (context , index){
            return CallCard(
              index: index,
              callList: _callList,
            );
          },

        ),
      ),
    );
  }
}
