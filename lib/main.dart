import 'package:flutter/material.dart';
import 'package:otp_verification/routs.dart';
import 'file:///D:/Flutter_project/sqlitedatabase/lib/constances/theme.dart';
import 'Screen_Splash_Page/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
       theme: theme(),
       initialRoute: Splash_Screen.routeName,
       routes: routes, // new page
     );
   }
 }

