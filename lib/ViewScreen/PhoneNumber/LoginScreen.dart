import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../OTPScreen/VerifyingPhoneNumber.dart';
class LoginScreen extends StatefulWidget {
  static String id = "LoginScreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late String country = "+20" , phoneNum;
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Enter your phone number",
          style: TextStyle(
            color: Colors.teal.shade500,
            fontWeight: FontWeight.w600,
            wordSpacing: 1
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(5.r),
            child: Icon(
                Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Text(
              "WhatsApp will send an sms message to verify your number",
              style: TextStyle(
                fontSize: 13.5.r
              ),
            ),
            SizedBox(height: 8.h,),
            Text(
              "what's my number ?",
              style: TextStyle(
                  fontSize: 12.5.r,
                color: Colors.cyan.shade800
              ),
            ),
            countryCard(),
            Container(
              width: 1.sw -100,
              height: 50.h,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.teal,
                          width: 1.8
                      )
                  )
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    flex : 2,
                    child: Text(
                      country,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          border: InputBorder.none
                        ),
                      )
                  )
                ],
              ),
            ),
            Spacer(),
            InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return SimpleDialog(
                        title: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black
                            ),
                            children: [
                              TextSpan(
                                  text : "we will verifying your phone number ${controller.text.toString()} \n",
                                  style: TextStyle(
                                    fontSize: 15.r,
                                    fontWeight: FontWeight.w600,
                                  )

                              ),
                              TextSpan(
                                  text : "Is this OK , or would you like to edit the number ?",
                                style: TextStyle(
                                  fontSize: 13.5.r,
                                  fontWeight: FontWeight.w400,
                                )
                              )
                            ]
                          ),

                        ),
                        children: [
                          Row(
                            mainAxisAlignment : MainAxisAlignment.end,
                            children: [
                              SimpleDialogOption(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text("Edit" , style: TextStyle(fontSize: 18 , color: Colors.teal.shade700),),
                              ),
                              SimpleDialogOption(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyingPhoneNumber( phoneNum: this.controller.text.toString())));
                                },
                                child: Text("Ok" , style: TextStyle(fontSize: 18 , color: Colors.teal.shade700),),
                              )
                            ],
                          )
                        ],
                      );
                    }
                );
              },
              child: Container(
                height: 40.h,
                width: 100.w,
                color: Colors.teal.shade700,
                child: Center(
                  child: Text(
                    "Next",
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
          ],
        ),
      ),
    );
  }
  Widget countryCard(){
    return Container(
      width: 1.sw -250,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.teal,
            width: 1.8
          )
        )
      ),
      child: CountryCodePicker(
        onChanged: (value){
          setState(() {
            country = value.toString();
          });
        },
        initialSelection: 'Eg',
        showOnlyCountryWhenClosed: true,
      )
    );
  }
}
