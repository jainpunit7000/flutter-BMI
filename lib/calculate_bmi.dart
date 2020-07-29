import 'dart:math';

class CalculateBMI {
  CalculateBMI({this.weight, this.height});
  final int weight;
  final int height;
  double _bmi;
  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String calcRES() {
    if (_bmi >= 25)
      return "OVER-WEIGHT";
    else if (_bmi >= 18.5)
      return "NORMAL";
    else
      return "UNDER-WEIGHT";
  }

  String calcINTER() {
    if (_bmi >= 25)
      return "You have a higher than normal body weight. Try to Exercise.";
    else if (_bmi >= 18.5)
      return "You have a normal body weight. Keep it up!";
    else
      return "You have a lower than normal body weight. You should eat more.";
  }
}
