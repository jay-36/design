import 'package:flutter/material.dart';
import 'package:otp_verification/components/Default_Button.dart';
import 'package:otp_verification/components/custom_Suffix_Icon.dart';
import 'package:otp_verification/components/form_error.dart';
import 'package:otp_verification/screens/otp/otp_screen.dart';
import '../../../constance.dart';
import '../../../size_config.dart';

class complete_profile_form extends StatefulWidget {
  @override
  _complete_profile_formState createState() => _complete_profile_formState();
}

class _complete_profile_formState extends State<complete_profile_form> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }
  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildFirstNameField(),  // Method
          SizedBox(height: getProportionateScreenHeight(30),),
          buildLastNameField(),  // Method
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPhoneNumberField(), // Method
          SizedBox(height: getProportionateScreenHeight(30),),
          buildAddressField(), // Method
          Form_Error(errors: errors,),
          SizedBox(height: getProportionateScreenHeight(40),),
          Default_Button(
            text: "Continue",
            press: (){
              if(_formKey.currentState.validate()){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OTP_screen()));
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter Your Phone Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/placeholder.svg',),
      ),
    );
  }
  TextFormField buildPhoneNumberField() {
    return TextFormField(
      maxLength: 10,
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mobile Number",
        hintText: "Enter Your Mobile Number",
        counter: Offstage(),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/smartphone-call.svg',),
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter Your Last Name",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/avatar.svg',),
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter Your First Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/avatar.svg',),
      ),
    );
  }
}