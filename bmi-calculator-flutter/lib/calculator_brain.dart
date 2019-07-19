import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '과체중';
    } else if (_bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '정상 몸무게보다 무겁습니다. 먹는 양을 조금 줄이고 운동을 좀 더 열심히 해볼까요?';
    } else if (_bmi > 18.5) {
      return '정상 몸무게 입니다. 좋아요!';
    } else {
      return '정상 몸무게보다 가볍습니다. 팍팍 좀 드세요. 운동도 좀 하시구요.';
    }
  }
}
