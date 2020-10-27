import 'package:flutter/material.dart';

import 'component/body_forgot_password.dart';

class forgot_password_screen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot PassWord'),
      ),
      body: body_forgot_password(),
    );
  }
}
