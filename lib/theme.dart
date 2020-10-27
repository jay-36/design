import 'package:flutter/material.dart';
import 'package:otp_verification/constance.dart';


ThemeData theme() {
  return  ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "exo2",
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
//      floatingLabelBehavior: FloatingLabelBehavior.always, --> it's not working in theme
      contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.white,
        textTheme: TextTheme(headline6: TextStyle(color:Colors.grey[900],fontSize: 18))
    );
}