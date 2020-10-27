import 'package:flutter/material.dart';
import 'package:otp_verification/size_config.dart';
import 'components/body_page.dart';

class Splash_Screen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // size in double Example : fontSize: getProportionateScreenWidth(36)
    return Scaffold(
      body: body_page(), // new page
    );
  }
}
