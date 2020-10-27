import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification/constance.dart';
import 'package:otp_verification/size_config.dart';

import 'OTP_form.dart';

class body_OTP_verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(  
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              Text("OTP Verification",style: headingStyle,),
              Text("We Send Your Code To +91 123464748"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15,),
              OTP_form(),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              GestureDetector(
                  onTap: (){
                    // resend OTP
                  },
                  child: Text("Resend OTP Code",style: TextStyle(decoration: TextDecoration.underline),))
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("This Code Will Expired In "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0,end: 0),
          duration: Duration(seconds: 30),
          builder: (context,value,child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: (){},
        ),
      ],
    );
  }
}

