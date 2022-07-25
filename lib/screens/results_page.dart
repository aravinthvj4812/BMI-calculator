import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, this.interpretation, this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kColorActive,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyStyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              ButtonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
