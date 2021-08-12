import 'package:bmi_calculator/components/bottomContainerButton.dart';
import 'package:bmi_calculator/components/resultTitleWidget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/result_text_widget.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.desciptionText,
      @required this.resultText,
      @required this.valueText});

  final String? resultText;
  final String? valueText;
  final String? desciptionText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Result header
          Expanded(
            child: YourResultTitleWidget(),
          ),
          //Result card widget which contains the result, value and info
          //
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: kactiveCardColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //Result Text Widget.
                  Padding(
                    padding: EdgeInsets.only(
                      top: 70.0,
                    ),
                    child: Center(
                      child: ResultTextWidget(
                        resultText: resultText,
                        textStyle: kresultTextTextStyle,
                      ),
                    ),
                  ),
                  //Result Value Widget
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: ResultTextWidget(
                        resultText: valueText,
                        textStyle: kresultValueTextStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70.0),
                    child: ResultTextWidget(
                      resultText: desciptionText,
                      textStyle: kresultDescriptionTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Bottom Conatiner Button to navigate back to the previous page
          BottomContainerButton(
              text: 'Recalculate',
              onPress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
