import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification/Screen_Splash_Page/components/splash_content.dart';
import 'package:otp_verification/components/Default_Button.dart';
import 'package:otp_verification/screens/signin/sign_in_screen.dart';
import 'package:otp_verification/size_config.dart';

import '../../constance.dart';

class body_page extends StatefulWidget {
  @override
  _body_pageState createState() => _body_pageState();
}

class _body_pageState extends State<body_page> {
  int currentPage = 0;
  List<Map<String,String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Welcome to GatEntry,Let`s See"
    },
    {
      "image": "assets/images/splash_2.png",
      "text": "We Help People Connect With Permition \n Around India"
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "Just Stay At Home With Us"
    },
    {
      "image": "assets/images/splash_2.png",
      "text": "We Help People Connect With Permition \n Around India"
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "Just Stay At Home With Us"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder // for scroll page
                (
                onPageChanged: (value){
                  setState(() {
                    currentPage=value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context,index)=>Spalsh_content  // new page
                  (
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(splashData.length,(index) => buildDot(index: index)),
                    ),
                    Spacer(flex: 3,),
                    Default_Button // new page
                      (
                      text: "Continue",
                      press: (){
                        Navigator.pushNamed(context, sign_in_screen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5 ),
      height: 7,width: currentPage==index ? 20 :7,
      decoration: BoxDecoration(
        color: currentPage==index? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


