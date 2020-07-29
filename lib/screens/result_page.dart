import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusableCard.dart';
import '../components/bottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.res, this.inter});
  final String bmi, res, inter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
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
                "Your Results",
                style: ktitleText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    res,
                    style: kresultText,
                  ),
                  Text(
                    bmi,
                    style: kbmi,
                  ),
                  Text(inter, textAlign: TextAlign.center, style: kidea),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: "RE-EVALUATE",
          ),
        ],
      ),
    );
  }
}
