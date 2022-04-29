import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Models/color.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.sp,
      padding: EdgeInsets.all(10.sp),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60.sp,
            height: 60.sp,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.sp),
              image: DecorationImage(
                image: AssetImage(
                  "images/image1.jpeg",
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.sp,
                vertical: 10.sp
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Haidy Mohmed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp
                  ),
                ),
                Text("Available"),
              ],
          ),
            )
          ),
          Expanded(
            child: Icon(
              Icons.qr_code,
              size: 30.sp,
              color: UserColor.app,
            ),
          ),
        ],
      ),
    );
  }
}
