import 'package:flutter/material.dart';
import 'package:otp_verification/components/Default_Button.dart';
import 'package:otp_verification/size_config.dart';

class body_login_success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04,),
        Image.asset('assets/images/success.png',height: SizeConfig.screenHeight * 0.43,width: SizeConfig.screenWidth * 1,fit: BoxFit.cover,),
        SizedBox(height: SizeConfig.screenHeight * 0.08,),
        Text("Login   Successfully",style: TextStyle(fontSize: getProportionateScreenWidth(30),fontWeight: FontWeight.bold,color: Colors.black),),
        Spacer(),
        SizedBox(width:SizeConfig.screenWidth * 0.6,child: Default_Button(text: "Go To Home",press: (){},)),
        Spacer(),
      ],
    );
  }
}
