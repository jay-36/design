import 'package:flutter/material.dart';
import 'package:otp_verification/components/Default_Button.dart';
import 'package:otp_verification/components/custom_Suffix_Icon.dart';
import 'package:otp_verification/components/form_error.dart';
import 'package:otp_verification/components/no_account_text.dart';
import 'package:otp_verification/size_config.dart';

import '../../../constance.dart';

class body_forgot_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column( 
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please Enter Your Email And We Will Send \n You A To return To Your Account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              forgot_password_form(),
            ],
          ),
        ),
      ),
    );
  }
}


class forgot_password_form extends StatefulWidget {
  @override
  _forgot_password_formState createState() => _forgot_password_formState();
}

class _forgot_password_formState extends State<forgot_password_form> {
  final _formKey = GlobalKey<FormState>();
  List<String>errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value){  // ---> remove error when user can re-enter email
              if(value.isNotEmpty && errors.contains((kEmailNullError))){
                setState(() {
                  errors.remove(kEmailNullError);
                });
              }
              else if (emailValidatorRegExp.hasMatch(value) && errors.contains((kInvalidEmailError))){
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value){ // ---> error occur when email box was empty and user can pressed continue button
              if(value.isEmpty && !errors.contains((kEmailNullError))){
                setState(() {
                  errors.add(kEmailNullError);
                });
              }
              else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains((kInvalidEmailError))){
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter Your Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/envelope.svg',),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          Form_Error(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1,),
          Default_Button(text:"Continue",press: (){
            if(_formKey.currentState.validate()){

            }
          } ,),
          SizedBox(height: SizeConfig.screenHeight * 0.1,),
          No_Account_Text(),
        ],
      ),
    );
  }
}
