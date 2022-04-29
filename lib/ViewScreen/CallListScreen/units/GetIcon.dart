import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetIcon extends StatelessWidget {

  List callList ;
  int index;
  GetIcon({Key? key , required this.callList , required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      if(this.callList[index].isComing){
        return Icon(
          FontAwesomeIcons.arrowUp ,
          color: Colors.red,
        );
      }
      else{
        return Icon(
            Icons.compare_arrows_rounded ,
            color: Colors.teal
        );
      }
  }
}
