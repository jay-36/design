import 'package:flutter/material.dart';
import 'package:otp_verification/components/social_card.dart';
import 'package:otp_verification/constance.dart';
import 'package:otp_verification/screens/signup/components/sign_up_form.dart';
import 'package:otp_verification/size_config.dart';

class body_sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text("Resister Account",style: headingStyle),
              Text("Complete Your Detail Or Continue \n With Social Media",textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.07,),
              sign_up_form(),
              SizedBox(height: SizeConfig.screenHeight * 0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Social_Card(
                    icon : 'assets/icons/iconmonstr-facebook-4.svg',
                    press: (){},
                  ),
                  Social_Card(
                    icon : 'assets/icons/iconmonstr-instagram-14.svg',
                    press: (){},
                  ),
                  Social_Card(
                    icon : 'assets/icons/iconmonstr-twitter-4.svg',
                    press: (){},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text("By Continuing Your Confirm That You Agree \n With Our Term And Condition",textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}

