import 'package:flutter/material.dart';

import 'bottomSheet.dart';
import 'icon_creation.dart';
getTextField(context , scrollController){
  return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width : MediaQuery.of(context).size.width -55,
                  child: Card(
                    margin: EdgeInsets.only(right: 5 , left: 5 , bottom: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Message",
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: IconButton(
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            ),
                            onPressed: () {  },

                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.attach_file,color: Colors.grey,),
                                onPressed: (){
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (builder) => bottomSheet(context),
                                  );
                                },
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera_alt, color: Colors.grey,) ,
                              ),
                            ],
                          )
                      ),
                    ),
                  ) ,
                ),
                Padding(
                  padding: const EdgeInsets.only( bottom: 8 , right: 3),
                  child: CircleAvatar(
                    backgroundColor: Colors.teal.shade800,
                    radius: 25,
                    child: IconButton(
                      icon: Icon(
                        Icons.mic ,
                      ),
                      onPressed: () {
                        scrollController.animateTo(
                            scrollController.position.maxScrollExtent,
                            duration: Duration(microseconds: 300),
                            curve: Curves.easeInOut
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
}