import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';

void main() {
  Calculator calc;
  //runs only once
  setUpAll(() {
    calc = Calculator();
  });
  // Calculator calc = Calculator();

  group('I want to test calculator', () {
    test('I want to test addition', () {
      //step1

      //step2
      int result = calc.add(3, 2);
      expect(result, 5);
    });
    test('I want to test Multiplication', () {
      int result = calc.mul(3, 2);
      //step3
      expect(result, 6);
      expect(result, isNot(9));
    });
  });
  tearDownAll(() {
    print('We Are done Good job');
  });
}
