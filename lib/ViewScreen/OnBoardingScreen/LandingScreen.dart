import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../PhoneNumber/LoginScreen.dart';
class LandingScreen extends StatefulWidget {
  static String id = "LandingScreen";
  LandingScreen({Key? key}) : super(key: key);
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        child: Column(
          children: [
            SizedBox(height: 50.h,),
            Text(
                "Welcome to WhatsApp",
              style: TextStyle(
                color: Colors.teal.shade700,
                fontSize: 25.r,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 1.sh / 8,),
            Image.asset(
                "images/bg.png",
              color: Colors.teal.shade700,
              height: 300.h,
              width: 300.w,
            ),
            SizedBox(height: 1.sh / 7,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),
                    children: [
                      TextSpan(text: "Agree and continue to accept the"),
                      TextSpan(
                          text: " whatsApp Terms of service and privacy policy",
                        style: TextStyle(
                          color: Colors.cyan
                        )
                      ),
                    ]
                  ),
              ),
            ),
            SizedBox(height: 20.h,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: Container(
                width: 1.sw - 90.w,
                height: 45.h,
                child: Card(
                  margin: EdgeInsets.all(0),
                  elevation: 8,
                  color: Colors.green.shade700,
                  child: Center(
                    child: Text(
                        "AGREE AND CONTINUE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
