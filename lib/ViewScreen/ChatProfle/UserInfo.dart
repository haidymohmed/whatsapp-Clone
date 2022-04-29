import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: must_be_immutable
class UserInfo extends StatefulWidget {
  String name , image  , number ;
  UserInfo({required this.name , required this.image , required this.number});

  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  late bool isMute = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.teal.shade800,
              expandedHeight: 1.sh / 3,
              floating: true,
              pinned: true,
              title: Text(widget.name,style: TextStyle(fontSize: 15.sp , fontWeight: FontWeight.bold),),
              //stretchTriggerOffset :
              elevation: 0,
              stretchTriggerOffset: 150,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                stretchModes: [StretchMode.fadeTitle],
                background: Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Text(
                            "online",
                          style: TextStyle(
                            fontWeight:FontWeight.w500,
                            fontSize:  15.sp,
                            color: Colors.white
                          ),
                        ),
                      )
                  ),
                ),
              )
            ),
            SliverToBoxAdapter(
              child: Container(
                width: 1.sw,
                height: 1.sh * 0.9,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: Container(
                        height: 140.h,
                        width: 1.sw,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                                height: 50,
                                width: 1.sw,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Media , Links and doc ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade700
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: InkWell(
                                          child: Row(
                                            children: [
                                              Text(
                                                "12  ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey.shade700
                                                ),
                                              ),
                                              Icon(
                                                  Icons.arrow_forward_ios_outlined,
                                                  size: 15,
                                                  color: Colors.grey.shade700
                                              )
                                            ],
                                          )
                                      ),
                                    )
                                  ],
                                )
                            ),
                            Container(
                              height: 100.h,
                              width: 1.sw,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 12,
                                  itemBuilder: (context , index){
                                    return  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 1.sw / 4,
                                        height: 1.sw / 4,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: AssetImage(widget.image),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: Container(
                        width: 1.sw,
                        color: Colors.white,
                        height: 170.h,
                        child: Column(
                          children: [
                            getListTitle(Icons.notifications_rounded , "Mute notification" , true , -1 , null),
                            getListTitle(Icons.music_note , "Custom notification" , false , -1, null),
                            getListTitle(Icons.image , "Media Visibility" , false , -1, null),
                            getListTitle(Icons.star , "Starred message" , true , 0, null),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: Container(
                        width: 1.sw,
                        color: Colors.white,
                        height: 100.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            getListTitle(Icons.lock , "Encryption" , false , -1, "Message and calls are end -to-end encrypted . \nTap to verify"),
                            getListTitle(Icons.timer_rounded , "Disappearing Message" , false , 0, "Off"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100.h,
                      width: 1.sw,
                      color: Colors.white,
                      child: Column(
                        children: [
                          getBlockAndReport(Icons.block , "Block ${widget.name}"),
                          getBlockAndReport(Icons.thumb_down , "Report ${widget.name}"),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
  ListTile getListTitle(iconData , title , bool per , num , subTitle){
    return ListTile(
      subtitle: subTitle == null ? null : Text(
        subTitle ,
        style: TextStyle(
            color: Colors.grey.shade700
        ),
      ),
      leading: Icon(iconData , color: Colors.grey.shade600),
      title: Text(
        title ,
        style: TextStyle(
          color: Colors.black
        ),
      ),
      trailing: per ?
          num > -1 ?
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Text(
                num.toString(),
              style: TextStyle(
                  color: Colors.grey.shade700,
                fontSize: 15.sp
              ),
            ),
          ):
          Switch(
            value: isMute,
            onChanged: (bool x) {
              setState(() {
                isMute = x;
              });
            },
          )
          : null,
    );
  }
  ListTile getBlockAndReport(iconData , title){
    return ListTile(
      leading: Icon(iconData , color: Colors.red.shade900),
      title: Text(
        title ,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.red.shade900
        ),
      ),
    );
  }
}
