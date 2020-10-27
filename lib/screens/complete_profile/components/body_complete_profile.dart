import 'package:flutter/material.dart';
import 'package:otp_verification/constance.dart';
import 'package:otp_verification/size_config.dart';

import 'complete_profile_form.dart';

class body_complete_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("Complete Profile",style: headingStyle,),
              Text("Complete Your Details Or Continue \n With Social Media",textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              complete_profile_form(),
              SizedBox(height: getProportionateScreenHeight(30),),
              Text("By Continuing Your Confirm That You Agree \n With Our Term And Condition",textAlign: TextAlign.center,),

            ],
          ),
        ),
      ),
    );
  }
}

