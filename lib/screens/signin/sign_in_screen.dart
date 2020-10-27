import 'package:flutter/material.dart';
import 'components/body_sign_in.dart';

class sign_in_screen extends StatelessWidget {
  static String  routeName = "/sign_in_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: body_sign_in(),
    );
  }
}
