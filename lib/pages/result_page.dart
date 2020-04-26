import 'package:flutter/material.dart';

import '../components/card_widget.dart';
import '../components/bottom_button.dart';

import '../util.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40.0),
            ),
          ),
          Expanded(
            flex: 9,
            child: CardWidget(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                          fontWeight: FontWeight.w700)),
                  Text(
                    bmiResult,
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700),
                  ),
                  Text(interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0)),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'Recalculate',
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}
