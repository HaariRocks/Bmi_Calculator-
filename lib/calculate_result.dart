import 'dart:math';

class CalculateResult {
  CalculateResult({this.height, this.weight});
  int height;
  int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpolation() {
    if (_bmi > 25) {
      return "You\'re OverWeight, Do Exercise To Become Normal..!";
    } else if (_bmi > 18.5) {
      return "You\'re Normal,Keep It Up..";
    } else {
      return "You\'re UnderWeight, Eat More Food To Become Normal..!";
    }
  }
}
