import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/ViewScreen/ChatScreen/chatScreen.dart';

import '../../ChatProfle/UserInfo.dart';
Future<dynamic> showPersonalImage(context , name , image ){
  return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Container(
              height: (1.sh / 2.55),
              width: 1.sw * 0.5,
            child: Column(
              children: [
                Container(
                  height: 1.sh / 3,
                  width: 1.sw * 0.7,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(name , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15.sp),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(name , image)));
                        },
                        icon: Icon(Icons.message_rounded , size: 20.sp, color: Colors.green.shade700,)
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.call , size: 20.sp, color: Colors.green.shade700,)
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.videocam_sharp , size: 20.sp, color: Colors.green.shade700,)
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>UserInfo(name: name, image: image, number: "01122373929",))
                        );
                        },
                        icon: Icon(Icons.info_outline , size: 20.sp, color: Colors.green.shade700,)
                    )
                  ],
                )
              ],
            )
          ),
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        );
      }
  );
}

