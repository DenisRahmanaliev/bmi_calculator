import 'dart:math';

class BmiBrain {
  static double calculateBmi(double height, int weight) {
    final bmiResult = weight / pow(height / 100, 2);
    return bmiResult;
  }

  static String bmiResult(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Семиз';
    } else if (bmiJoop > 18.5) {
      return 'Норма';
    } else if (bmiJoop < 18.5) {
      return 'Арык';
    }
    return '';
  }

  static String giveDescription(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Коп басыныз';
    } else if (bmiJoop > 18.5) {
      return 'Ушул багытта кете берин';
    } else if (bmiJoop < 18.5) {
      return 'Коп тамак жен';
    }
    return '';
  }
}
