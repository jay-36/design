import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

class Form_Error extends StatelessWidget {
  const Form_Error({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(errors.length, (index) => FormErrorText(error: errors[index]))
    );
  }

  Row FormErrorText({String error}) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0,getProportionateScreenHeight(5),0,getProportionateScreenHeight(5)),
          child: SvgPicture.asset(
            'assets/icons/error.svg',
            height: getProportionateScreenHeight(20),
            width: getProportionateScreenWidth(20),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(10),),
        Text(error),
      ],
    );
  }
}

