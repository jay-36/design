import 'package:flutter/widgets.dart';
import 'package:otp_verification/Screen_Splash_Page/Splash_Screen.dart';
import 'package:otp_verification/screens/complete_profile/complete_profile_screen.dart';
import 'package:otp_verification/screens/forgot_password/forgot_password_screen.dart';
import 'package:otp_verification/screens/login_success/login_success.dart';
import 'package:otp_verification/screens/otp/otp_screen.dart';
import 'package:otp_verification/screens/signin/sign_in_screen.dart';
import 'package:otp_verification/screens/signup/sign_up_screen.dart';

final Map<String,WidgetBuilder> routes = {
  Splash_Screen.routeName:(context) => Splash_Screen(), // new page
  sign_in_screen.routeName:(context) => sign_in_screen(),
  forgot_password_screen.routeName:(context) => forgot_password_screen(),
  login_success_screen.routeName:(context) => login_success_screen(),
  sign_up_screen.routeName:(context) => sign_up_screen(),
  complete_profile_screen.routeName:(context) => complete_profile_screen(),
  OTP_screen.routeName:(context) => OTP_screen(),
};
