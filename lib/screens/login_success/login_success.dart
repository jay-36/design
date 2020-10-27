import 'package:flutter/material.dart';

import 'component/body_login_success.dart';

class login_success_screen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: Text('Login Successfully'),
      ),
      body: body_login_success(),
    );
  }
}
