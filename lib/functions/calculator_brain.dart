import 'dart:math';

class CalculatorBrain {
  final double height;
  final double weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

  String getBMI() {
    _bmi = this.weight / pow(this.height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getTextResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Eat less';
    } else if (_bmi > 18) {
      return 'Keep it going';
    } else {
      return 'Eat more';
    }
  }
}
