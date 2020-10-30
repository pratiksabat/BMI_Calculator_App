import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:bmi_calculator/components/Card_content.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult,bmiText,bmiInterpretation;

  ResultPage({@required this.bmiResult,@required this.bmiText,@required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
            'Your Result is',
            style: kNumberStyle,
          ),
              )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: KActiveColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiText.toUpperCase(),
                    style: TextStyle(color: Colors.green,fontSize: 25),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiInterpretation,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            label: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
