import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);
  final int height;
  final int weight;
  double _BMI;

  String calculateBMI() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25) {
      return 'Overweight';
    } else if (_BMI > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_BMI >= 25) {
      return '太りすぎです。ダイエットしましょう';
    } else if (_BMI > 18.5) {
      return '理想的な体系です。その調子';
    } else {
      return '痩せすぎです。もっとしっかり食べましょう';
    }
  }
}
