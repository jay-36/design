import 'package:flutter/material.dart';

import 'components/body_complete_profile.dart';

class complete_profile_screen extends StatelessWidget {
  static String routeName= "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: body_complete_profile(),
    );
  }
}
