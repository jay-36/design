import 'package:flutter/material.dart';
import 'package:otp_verification/screens/forgot_password/forgot_password_screen.dart';
import 'package:otp_verification/screens/signup/sign_up_screen.dart';
import '../constance.dart';
import '../size_config.dart';

class No_Account_Text extends StatelessWidget {
  const No_Account_Text({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have An Account ?",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16)
          ),
        ),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => sign_up_screen())),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: kPrimaryColor),
            ),
          ),
      ],
    );
  }
}