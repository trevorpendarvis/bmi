import 'dart:math';

class CalculatorBmi {
  CalculatorBmi(this.weight, this.height);

  final int weight;
  final int height;
  double _bmi;

  String calcBMI() {
    double kg = this.weight * 0.45359237;
    double meter = this.height * 0.0254;
    this._bmi = kg / (pow(meter, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
}
