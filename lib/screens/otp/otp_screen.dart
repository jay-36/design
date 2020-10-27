import 'package:flutter/material.dart';
import 'components/body_OTP_verification.dart';

class OTP_screen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "OTP Verification",
        ),
      ),
      body:  body_OTP_verification(),
    );
  }
}
