import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String label;

  BottomButton({@required this.onPress,@required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(child: Text(label,style: kLargeTextStyle,)),
        color: kBottomColor,
        height: kHeightBottom,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
