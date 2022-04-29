import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../Home/homeScreen.dart';

// ignore: must_be_immutable
class VerifyingPhoneNumber extends StatefulWidget {
  static String id = "VerifyingPhoneNumber";
  late String phoneNum  = "019394849w8948";
  VerifyingPhoneNumber({required this.phoneNum});

  @override
  _VerifyingPhoneNumberState createState() => _VerifyingPhoneNumberState();
}

class _VerifyingPhoneNumberState extends State<VerifyingPhoneNumber> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Verify  ${widget.phoneNum}" , style: TextStyle(color: Colors.teal.shade700,),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: Colors.teal.shade700,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: OTPTextField(
                controller: otpController,
                length: 6,
                width: 1.sw -100,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: ((1.sw -200) / 6).w ,
                fieldStyle: FieldStyle.underline,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }),
          ),
          SizedBox(height: 20.h,),
          getCard("Resend SMS", Icons.message_rounded, "1:02"),
          getCard("Call Me", Icons.call, "1:02"),
          Spacer(),
          InkWell(
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(context, HomePage.id, (route) => false);
            },
            child: Container(
              height: 40.h,
              width: 100.w,
              color: Colors.teal.shade700,
              child: Center(
                child: Text(
                  "Verify",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.r,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Spacer(),
        ],
      ),
    );
  }
  getCard(name , icon , tail){
    return Container(
      width: 1.sw - 20,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 1
          )
        )
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.r),
      child: ListTile(
        title: Text(name,style: TextStyle(color: Colors.teal.shade700 , fontSize: 15.r , fontWeight: FontWeight.w500),),
        leading: Icon(icon ,color: Colors.teal.shade700),
        trailing: Text(tail),
      ),
    );
  }
}
