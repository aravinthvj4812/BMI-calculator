import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    double BMI = weight / pow(height / 100, 2);
    _bmi = BMI;
    return BMI.toStringAsFixed(1);
  }

  String getResult() {
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
      return 'You have a higher BMI.Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal BMI.Good job!';
    } else {
      return 'You have a lower BMI.Try to eat more.';
    }
  }
}
