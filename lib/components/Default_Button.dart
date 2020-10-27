import 'package:flutter/material.dart';
import '../constance.dart';
import '../size_config.dart';


class Default_Button extends StatelessWidget {
  const Default_Button({
    Key key, this.text, this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        onPressed: press,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        child: Text(text,style: TextStyle(fontSize: getProportionateScreenWidth(18),color: Colors.white),),
      ),
    );
  }
}