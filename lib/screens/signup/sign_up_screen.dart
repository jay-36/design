import 'package:flutter/material.dart';
import 'package:otp_verification/screens/signup/components/body_sign_up.dart';

class sign_up_screen extends StatelessWidget {
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: body_sign_up(),
    );
  }
}
