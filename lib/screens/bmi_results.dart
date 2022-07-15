import 'package:flutter/material.dart';
import 'package:rahat_app/constants.dart';
import 'package:rahat_app/widgets/bottom_button.dart';
import 'package:rahat_app/widgets/resusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: kHeadingTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
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
                    style: kTitleTextstyle.copyWith(
                        color: Color(0xFFFF5722), fontSize: 100.0),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kSubTextStyle.copyWith(
                        fontSize: 32.0,
                        color: Color(0xFFD81B60),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              onPress: () => {print('pressed')},
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
