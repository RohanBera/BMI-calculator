import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components//reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmiText;
  final String bmiInterpretation;

  ResultsPage(
      {@required this.bmiResult,
      @required this.bmiText,
      @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Your Result : ',
                style: kYourResultTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      bmiText.toUpperCase(),
                      style: kResultStringTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiResult,
                      style: kResultValueTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiInterpretation,
                      style: kResultsSummaryTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Re-calculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
