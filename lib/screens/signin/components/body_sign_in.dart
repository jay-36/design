import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification/components/no_account_text.dart';
import 'package:otp_verification/components/social_card.dart';
import 'package:otp_verification/screens/signin/components/sign_form.dart';
import 'package:otp_verification/size_config.dart';
import '';

class body_sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.04,),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign In With Your Email And Password \n or Continue With Social Media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                sign_form(),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),

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
                No_Account_Text(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


