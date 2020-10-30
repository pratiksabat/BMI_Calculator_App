import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCardChild extends StatelessWidget {
  final String gender;
  final IconData icons;

  ReusableCardChild(this.gender,this.icons);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icons,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          gender,
          style: kTextStyle,
        )
      ],
    );
  }
}
