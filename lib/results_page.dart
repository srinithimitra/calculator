import 'package:calculator/constants.dart';
import 'package:calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

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
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ResusableCard(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: ResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: BmiTextStyle,
                      ),
                      Text(
                        interpretation,
                        style: BodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPress: () {}),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              ButtonTitle: 'RE-CALCULATE',
            ),
          ],
        ));
  }
}
