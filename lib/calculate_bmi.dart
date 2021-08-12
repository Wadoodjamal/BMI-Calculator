import 'dart:math';

class CalculateBMI {
  double? _bmi;

  String getResultValue(int height, int weight) {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResultText() {
    String result = '';
    if (_bmi! < 18.5) {
      result = 'UnderWeight';
    } else if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      result = 'Normal Weight';
    } else {
      result = 'Overweight';
    }
    return result;
  }

  String getResultInterpretation() {
    String result = '';
    if (_bmi! < 18.5) {
      result = 'Your BMI result is quite low. Eat more and healthy food.';
    } else if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      result = 'Your BMI result is perfect. Your body is perfectly healthy.';
    } else {
      result = 'Your BMI result is quite high. Try to control your overeating.';
    }
    return result;
  }
}
